package com.graffity.example.tabsapp

import android.view.ViewManager
import androidx.annotation.Nullable
import com.facebook.drawee.backends.pipeline.Fresco
import com.facebook.react.bridge.*
import com.facebook.react.uimanager.SimpleViewManager
import com.facebook.react.uimanager.ThemedReactContext
import com.facebook.react.uimanager.ViewProps
import com.facebook.react.uimanager.annotations.ReactProp
import com.facebook.react.views.image.ImageResizeMode
import com.facebook.react.views.image.ReactImageManager
import com.facebook.react.views.image.ReactImageView
import java.util.*


class ARCloudAndroid(reactContext: ReactApplicationContext) : ReactContextBaseJavaModule(reactContext) {
    override fun getName() = "ARModule"

    @ReactMethod
    fun open(promise: Promise) {
//        val intent = Intent(reactApplicationContext, ModuleNameActivity::class.java)
//        intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
//        reactApplicationContext.startActivity(intent)
//        promise.resolve(true)


    }
}

//class ARCloudAndroid(var mCallerContext: ReactApplicationContext) :
//    SimpleViewManager<ReactImageView?>() {
//    override fun getName(): String {
//        return REACT_CLASS
//    }
//
//    companion object {
//        const val REACT_CLASS = "ARCloudAndroidView"
//    }
//
//    @ReactProp(name = "src")
//    fun setSrc(view: ReactImageView, @Nullable sources: ReadableArray?) {
//        view.setSource(sources)
//    }
//
//    @ReactProp(name = "borderRadius", defaultFloat = 0f)
//    fun setBorderRadius(view: ReactImageView, borderRadius: Float) {
//        view.setBorderRadius(borderRadius)
//    }
//
//    @ReactProp(name = ViewProps.RESIZE_MODE)
//    fun setResizeMode(view: ReactImageView, @Nullable resizeMode: String?) {
//        view.setScaleType(ImageResizeMode.toScaleType(resizeMode))
//    }
//
//    override fun createViewInstance(reactContext: ThemedReactContext): ReactImageView {
//        return ReactImageView(reactContext, Fresco.newDraweeControllerBuilder(), null, mCallerContext)
//    }
//
//    fun createViewManagers(
//        reactContext: ReactApplicationContext?
//    ): List<ViewManager?>? {
//
//        val module = reactContext?.let { ARCloudAndroid(it) }
//        val list: List<ViewManager>
//
//
//        return Arrays.<ViewManager> asList < ViewManager ? > ReactImageManager(reactContext)
//    }
//}