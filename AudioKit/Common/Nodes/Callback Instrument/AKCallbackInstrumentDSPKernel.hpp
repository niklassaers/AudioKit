// Copyright AudioKit. All Rights Reserved. Revision History at http://github.com/AudioKit/AudioKit/

#pragma once
#import "AKSoundpipeKernel.hpp"
#import "TPCircularBuffer.h"

class AKCallbackInstrumentDSPKernel : public AKSoundpipeKernel, public AKOutputBuffered {
public:
    // MARK: Member Functions

    TPCircularBuffer midiBuffer;
    NSTimer* timer;

    AKCallbackInstrumentDSPKernel() {
        TPCircularBufferInit(&midiBuffer, 4096);
        // Hopefully this polling interval is ok.
        timer = [NSTimer scheduledTimerWithTimeInterval:0.01
                                                repeats:true
                                                  block:^(NSTimer * _Nonnull timer) {
                 consumer();
                 }];
    }

    ~AKCallbackInstrumentDSPKernel() {
        TPCircularBufferCleanup(&midiBuffer);
        [timer invalidate];
    }

    void init(int _channels, double _sampleRate) override {
        AKSoundpipeKernel::init(_channels, _sampleRate);
    }

    void destroy() {
        AKSoundpipeKernel::destroy();
    }
    
    void start() {
        started = true;
    }

    void stop() {
        started = false;
    }

    void reset() {
        resetted = true;
    }

    void setParameter(AUParameterAddress address, AUValue value) {

    }

    AUValue getParameter(AUParameterAddress address) {
        return 0.0f;
    }

    void startRamp(AUParameterAddress address, AUValue value, AUAudioFrameCount duration) override {

    }

    void process(AUAudioFrameCount frameCount, AUAudioFrameCount bufferOffset) override {
        //do nothing
        for (int i = 0; i < frameCount; i++) {
            count += 1;
            if (updateTime) {
                int diff = count - lastFrameCount;
                printf("debug: time is %i diff is %i\n", count, diff);
                lastFrameCount = count;
                updateTime = false;
            }
        }
    }

    void startNote(int note, int velocity) {
        send(0x90, note, velocity);
    }

    void stopNote(int note) {
        send(0x80, note, 0);
    }

    virtual void handleMIDIEvent(AUMIDIEvent const& midiEvent) override {
        if (midiEvent.length != 3) return;
        uint8_t status = midiEvent.data[0];
        uint8_t data1 = midiEvent.data[1];
        uint8_t data2 = midiEvent.data[2];
        send(status, data1, data2);
    }

    void send(uint8_t status, uint8_t data1, uint8_t data2) {
        uint8_t midi[3] = {status, data1, data2};
        TPCircularBufferProduceBytes(&midiBuffer, midi, 3);
    }

    void consumer() {
        int32_t availableBytes;
        uint8_t* data = (uint8_t*) TPCircularBufferTail(&midiBuffer, &availableBytes);
        if(data) {
            int32_t messageCount = availableBytes / 3;

            if(callback) {
                for(int messageIndex=0; messageIndex < messageCount; ++messageIndex) {
                    uint8_t status = data[3*messageIndex];
                    uint8_t data1 = data[3*messageIndex+1];
                    uint8_t data2 = data[3*messageIndex+2];
                    callback(status, data1, data2);
                }
            }
            TPCircularBufferConsume(&midiBuffer, messageCount * 3);
        }
    }
    
private:
    int count = 0;
    int lastFrameCount = 0;
    bool updateTime = false;

public:
    bool started = false;
    bool resetted = false;
    AKCMIDICallback callback = nullptr;
};
