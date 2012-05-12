/*
 * Copyright (C) 2009 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.example.hellojni;

import org.cocos2dx.lib.Cocos2dxActivity;
import org.cocos2dx.lib.Cocos2dxEditText;
import org.cocos2dx.lib.Cocos2dxGLSurfaceView;

import android.os.Bundle;

public class HelloJni extends Cocos2dxActivity {
  private Cocos2dxGLSurfaceView mGLView;

  @Override
  public void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);

    // get the packageName,it's used to set the resource path
    String packageName = getApplication().getPackageName();
    super.setPackageName(packageName);

    setContentView(R.layout.helloworld_demo);
    mGLView = (Cocos2dxGLSurfaceView) findViewById(R.id.helloworld_gl_surfaceview);
    mGLView.setTextField((Cocos2dxEditText)findViewById(R.id.textField));
  }

  @Override
  protected void onPause() {
      super.onPause();
      mGLView.onPause();
  }

  @Override
  protected void onResume() {
      super.onResume();
      mGLView.onResume();
  }

  static {
    System.loadLibrary("macemu");
    System.loadLibrary("objc");
    System.loadLibrary("cf");
    System.loadLibrary("foundation");
    System.loadLibrary("cocos2dx");
    System.loadLibrary("cocos2d");
    System.loadLibrary("cocosdenshionx");
    System.loadLibrary("cocosdenshion");
    System.loadLibrary("hello-jni");
  }
}
