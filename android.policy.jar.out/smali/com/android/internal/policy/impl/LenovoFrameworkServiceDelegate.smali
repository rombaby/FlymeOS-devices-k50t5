.class public Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;
.super Ljava/lang/Object;
.source "LenovoFrameworkServiceDelegate.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate$LenovoFrameworkCallBack;,
        Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate$ShowListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static final LENOVO_FRAMEWORK_CLASS:Ljava/lang/String; = "com.lenovo.framework.LenovoFrameworkService"

.field public static final LENOVO_FRAMEWORK_PACKAGE:Ljava/lang/String; = "com.lenovo.gesture"

.field public static final MSG_BIND_SERVICE:I = 0x64

.field public static final MSG_UNBIND_SERVICE:I = 0x65

.field private static final SERVICE_RESTART_DEALY_MS:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "LenovoGesture_FrameworkServiceDelegate"

.field private static isEnabled:Z

.field private static mInstance:Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mKeyguardViewMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

.field private final mLenovoFrameworkConnection:Landroid/content/ServiceConnection;

.field protected mLenovoFrameworkService:Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;

.field private mShowListener:Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate$ShowListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyguardViewMediator"    # Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    new-instance v0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate$1;-><init>(Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mLenovoFrameworkConnection:Landroid/content/ServiceConnection;

    .line 59
    iput-object p2, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mKeyguardViewMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    .line 60
    iput-object p1, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mContext:Landroid/content/Context;

    .line 61
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->isEnabled:Z

    .line 63
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->isFirstIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->initDefaultIntentUri()V

    .line 65
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->setDefaultModeAndCaptureNum()V

    .line 66
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->setDefaultCheckBoxPrefsValues()V

    .line 69
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LenovoGesture_FrameworkServiceDelegate"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mHandlerThread:Landroid/os/HandlerThread;

    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 71
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mHandler:Landroid/os/Handler;

    .line 72
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->isEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;)Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate$ShowListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mShowListener:Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate$ShowListener;

    return-object v0
.end method

.method private doBind()V
    .locals 5

    .prologue
    .line 75
    const-string v1, "LenovoGesture_FrameworkServiceDelegate"

    const-string v2, "doBind."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 77
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.lenovo.gesture"

    const-string v2, "com.lenovo.framework.LenovoFrameworkService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mLenovoFrameworkConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    const-string v1, "LenovoGesture_FrameworkServiceDelegate"

    const-string v2, "***: can\'t bind to com.lenovo.framework.LenovoFrameworkService"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    const-string v1, "LenovoGesture_FrameworkServiceDelegate"

    const-string v2, "*** started"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doUnBind()V
    .locals 2

    .prologue
    .line 88
    const-string v0, "LenovoGesture_FrameworkServiceDelegate"

    const-string v1, "doUnBind."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mLenovoFrameworkConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 90
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "keyguardViewMediator"    # Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    .prologue
    .line 52
    const-class v1, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mInstance:Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)V

    sput-object v0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mInstance:Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;

    .line 55
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mInstance:Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initDefaultIntentUri()V
    .locals 5

    .prologue
    .line 182
    const/4 v1, 0x0

    .line 183
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 185
    .local v2, "intentUri":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 187
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string v3, "LenovoGesture_FrameworkServiceDelegate"

    const-string v4, "Fisrt in ,initDefaultIntentUri"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const-string v3, "LenovoGesture_FrameworkServiceDelegate"

    const-string v4, "Annan-->DefaultIntentUri()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 191
    .restart local v1    # "intent":Landroid/content/Intent;
    sget-object v3, Lcom/android/internal/policy/impl/LenovoFrameworkGestureConfig;->DEFAULT_PACKAGE_E:Ljava/lang/String;

    sget-object v4, Lcom/android/internal/policy/impl/LenovoFrameworkGestureConfig;->DEFAULT_CLASS_E:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    invoke-virtual {v1}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v2

    .line 193
    const-string v3, "black_gesture_wakeup_e_intent"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 195
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 196
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "com.lenovo.scg"

    const-string v4, "com.lenovo.scg.camera.CameraLauncher"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    invoke-virtual {v1}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v2

    .line 198
    const-string v3, "black_gesture_wakeup_c_intent"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 200
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 201
    .restart local v1    # "intent":Landroid/content/Intent;
    sget-object v3, Lcom/android/internal/policy/impl/LenovoFrameworkGestureConfig;->DEFAULT_PACKAGE_M:Ljava/lang/String;

    sget-object v4, Lcom/android/internal/policy/impl/LenovoFrameworkGestureConfig;->DEFAULT_CLASS_M:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    invoke-virtual {v1}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v2

    .line 203
    const-string v3, "black_gesture_wakeup_m_intent"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 205
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 206
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "com.lenovo.videoplayer"

    const-string v4, "com.lenovo.videoplayer.VideoPlayerActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    invoke-virtual {v1}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v2

    .line 208
    const-string v3, "black_gesture_wakeup_v_intent"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 209
    return-void
.end method

.method private isFirstIn()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 134
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 135
    .local v0, "isFirstIn":Ljava/lang/Boolean;
    iget-object v3, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "black_gesture_is_first_in"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "black_gesture_is_first_in"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 142
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    :cond_1
    move v1, v2

    .line 135
    goto :goto_0
.end method

.method private isInSupperClassicMode()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 122
    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "supperClassicMode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 124
    .local v0, "isInSupperClassicMode":Z
    :goto_0
    const-string v1, "LenovoGesture_FrameworkServiceDelegate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LenovoGestures isInSupperClassicMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return v0

    .line 122
    .end local v0    # "isInSupperClassicMode":Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setDefaultCheckBoxPrefsValues()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 154
    const-string v1, "LenovoGesture_FrameworkServiceDelegate"

    const-string v2, "Fisrt in ,setDefaultCheckBoxPrefsValues"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 158
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string v1, "slide_unlock_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 159
    const-string v1, "black_gesture_light_up_enable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 161
    const-string v1, "black_gesture_top_speed_snap_enable"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 163
    const-string v1, "black_gesture_wakeup_c_enable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 164
    const-string v1, "black_gesture_wakeup_e_enable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 165
    const-string v1, "black_gesture_wakeup_m_enable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 166
    const-string v1, "black_gesture_wakeup_v_enable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 169
    const-string v1, "black_gesture_warning_pop_up_enable"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 172
    sget-boolean v1, Lcom/android/internal/policy/impl/LenovoFrameworkGestureConfig;->LENOVO_GESTURE_PICK_UP_SUPPORT:Z

    if-ne v1, v4, :cond_0

    .line 173
    const-string v1, "black_gesture_pick_up_enable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 175
    :cond_0
    sget-boolean v1, Lcom/android/internal/policy/impl/LenovoFrameworkGestureConfig;->LENOVO_GESTURE_WAVE_HAND_SUPPORT:Z

    if-ne v1, v4, :cond_1

    .line 176
    const-string v1, "black_gesture_wave_hand_enable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 179
    :cond_1
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 2

    .prologue
    .line 103
    const-string v0, "LenovoGesture_FrameworkServiceDelegate"

    const-string v1, "disable LenovoFrameworkServiceDelegate."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    sget-boolean v0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->isEnabled:Z

    if-nez v0, :cond_0

    .line 105
    const-string v0, "LenovoGesture_FrameworkServiceDelegate"

    const-string v1, "already disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->isEnabled:Z

    .line 109
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public enable()V
    .locals 2

    .prologue
    .line 93
    const-string v0, "LenovoGesture_FrameworkServiceDelegate"

    const-string v1, "enable LenovoFrameworkServiceDelegate."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    sget-boolean v0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 95
    const-string v0, "LenovoGesture_FrameworkServiceDelegate"

    const-string v1, "already enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->isEnabled:Z

    .line 99
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 301
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 311
    const-string v0, "LenovoGesture_FrameworkServiceDelegate"

    const-string v1, "un-handled message."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/4 v0, 0x0

    .line 314
    :goto_0
    return v0

    .line 303
    :pswitch_0
    const-string v0, "LenovoGesture_FrameworkServiceDelegate"

    const-string v1, "msg: do bind service."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->doBind()V

    .line 314
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 307
    :pswitch_1
    const-string v0, "LenovoGesture_FrameworkServiceDelegate"

    const-string v1, "msg: do UNbind service."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->doUnBind()V

    goto :goto_1

    .line 301
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isReady()Z
    .locals 4

    .prologue
    .line 114
    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mLenovoFrameworkService:Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mLenovoFrameworkService:Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;->isGestureUnlockScreenReady()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->isInSupperClassicMode()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 117
    .local v0, "isready":Z
    :goto_0
    const-string v1, "LenovoGesture_FrameworkServiceDelegate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "this="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",gestureframeworkService="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mLenovoFrameworkService:Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",isReady: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return v0

    .line 114
    .end local v0    # "isready":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScreenTurnedOff(I)V
    .locals 1
    .param p1, "why"    # I

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mLenovoFrameworkService:Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mLenovoFrameworkService:Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;->onScreenTurnedOff(I)V

    .line 297
    :cond_0
    return-void
.end method

.method public onScreenTurnedOn(Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate$ShowListener;)V
    .locals 1
    .param p1, "showListener"    # Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate$ShowListener;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mShowListener:Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate$ShowListener;

    .line 287
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mLenovoFrameworkService:Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mLenovoFrameworkService:Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;->onScreenTurnedOn()V

    .line 290
    :cond_0
    return-void
.end method

.method public setDefaultModeAndCaptureNum()V
    .locals 3

    .prologue
    .line 146
    const-string v0, "LenovoGesture_FrameworkServiceDelegate"

    const-string v1, "Fisrt in ,setDefaultModeAndCaptureNum"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "black_gesture_flash_mode_value"

    const-string v2, "auto"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 149
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "black_gesture_capture_num_value"

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 151
    return-void
.end method

.method public showGestureUnlockScreen()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mLenovoFrameworkService:Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mLenovoFrameworkService:Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;->showGestureUnlockScreen()V

    .line 273
    :cond_0
    return-void
.end method

.method public triggerSnapshot(I)V
    .locals 2
    .param p1, "keycode"    # I

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mLenovoFrameworkService:Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;->triggerSnapshot(I)V

    .line 282
    :goto_0
    return-void

    .line 280
    :cond_0
    const-string v0, "LenovoGesture_FrameworkServiceDelegate"

    const-string v1, "LenovoFrameworkService not ready!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
