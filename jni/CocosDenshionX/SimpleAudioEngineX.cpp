/****************************************************************************
Copyright (c) 2010 cocos2d-x.org

http://www.cocos2d-x.org

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
****************************************************************************/

#include "SimpleAudioEngineX.h"
#include "jni/SimpleAudioEngineJni.h"

namespace CocosDenshionX
{
	static SimpleAudioEngineX *s_pEngine = 0;

	SimpleAudioEngineX::SimpleAudioEngineX()
	{

	}

	SimpleAudioEngineX::~SimpleAudioEngineX()
	{

	}

	SimpleAudioEngineX* SimpleAudioEngineX::sharedEngine()
	{
		if (! s_pEngine)
		{
			s_pEngine = new SimpleAudioEngineX();
		}
        
		return s_pEngine;
	}

	void SimpleAudioEngineX::end()
	{
		endJNI();
	}

	void SimpleAudioEngineX::setResource(const char* pszZipFileName)
	{

	}

    void SimpleAudioEngineX::preloadBackgroundMusic(const char* pszFilePath)
	{
        preloadBackgroundMusicJNI(pszFilePath);
	}

	void SimpleAudioEngineX::playBackgroundMusic(const char* pszFilePath, bool bLoop)
	{
        playBackgroundMusicJNI(pszFilePath, bLoop);
	}

	void SimpleAudioEngineX::stopBackgroundMusic(bool bReleaseData)
	{
		stopBackgroundMusicJNI();
	}

	void SimpleAudioEngineX::pauseBackgroundMusic()
	{
		pauseBackgroundMusicJNI();
	}

	void SimpleAudioEngineX::resumeBackgroundMusic()
	{
		resumeBackgroundMusicJNI();
	} 

	void SimpleAudioEngineX::rewindBackgroundMusic()
	{
		rewindBackgroundMusicJNI();
	}

	bool SimpleAudioEngineX::willPlayBackgroundMusic()
	{
		return true;
	}

	bool SimpleAudioEngineX::isBackgroundMusicPlaying()
	{
		return isBackgroundMusicPlayingJNI();
	}

	float SimpleAudioEngineX::getBackgroundMusicVolume()
	{
		return getBackgroundMusicVolumeJNI();
	}

	void SimpleAudioEngineX::setBackgroundMusicVolume(float volume)
	{
		setBackgroundMusicVolumeJNI(volume);
	}

	float SimpleAudioEngineX::getEffectsVolume()
	{
		return getEffectsVolumeJNI();
	}

	void SimpleAudioEngineX::setEffectsVolume(float volume)
	{
		setEffectsVolumeJNI(volume);
	}

	unsigned int SimpleAudioEngineX::playEffect(const char* pszFilePath, bool bLoop)
	{
		return playEffectJNI(pszFilePath, bLoop);
	}

	void SimpleAudioEngineX::stopEffect(unsigned int nSoundId)
	{
		stopEffectJNI(nSoundId);
	}

	void SimpleAudioEngineX::preloadEffect(const char* pszFilePath)
	{
		preloadEffectJNI(pszFilePath);
	}

	void SimpleAudioEngineX::unloadEffect(const char* pszFilePath)
	{
		unloadEffectJNI(pszFilePath);
	}

	void SimpleAudioEngineX::pauseEffect(unsigned int nSoundId)
	{
		pauseEffectJNI(nSoundId);
	}

	void SimpleAudioEngineX::pauseAllEffects()
	{
		pauseAllEffectsJNI();
	}

	void SimpleAudioEngineX::resumeEffect(unsigned int nSoundId)
	{
		resumeEffectJNI(nSoundId);
	}

	void SimpleAudioEngineX::resumeAllEffects()
	{
		resumeAllEffectsJNI();
	}

	void SimpleAudioEngineX::stopAllEffects()
	{
		stopAllEffectsJNI();
	}
}
