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

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

public class HelloJni extends Cocos2dxActivity {
  /** Called when the activity is first created. */
  @Override
  public void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);

    /*
     * Create a TextView and set its content. the text is retrieved by calling a
     * native function.
     */
    final Button button = new Button(this);
    button.setText(stringFromJNI());
    setContentView(button);
    button.setOnClickListener(new OnClickListener() {

      @Override
      public void onClick(View v) {
        button.setText(stringFromJNI());
      }
    });
  }

  /*
   * A native method that is implemented by the 'hello-jni' native library,
   * which is packaged with this application.
   */
  public native String stringFromJNI();

  static {
    System.loadLibrary("macemu");
    System.loadLibrary("objc");
    System.loadLibrary("cf");
    System.loadLibrary("foundation");
    System.loadLibrary("cocos2dx");
    System.loadLibrary("cocosdenshionx");
    System.loadLibrary("cocosdenshion");
    System.loadLibrary("hello-jni");
  }
}
