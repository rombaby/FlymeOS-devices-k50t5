.class public Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;
.super Ljava/lang/Object;
.source "LightSensorSample.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$Callback;,
        Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;,
        Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;,
        Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$DisplayControllerHandler;
    }
.end annotation


# static fields
.field private static final AMBIENT_LIGHT_HORIZON:I = 0x2710

.field private static final AMBIENT_LIGHT_PREDICTION_TIME_MILLIS:J = 0x64L

.field private static final BRIGHTENING_LIGHT_DEBOUNCE:J = 0x5dcL

.field private static final BRIGHTENING_LIGHT_HYSTERESIS:F = 0.1f

.field private static final CHANGE_MODE_HIGH_LUX:I = 0x1770

.field private static final CHANGE_MODE_LOW_LUX:I = 0x7d0

.field private static final DARKENING_LIGHT_DEBOUNCE:J = 0x1388L

.field private static final DARKENING_LIGHT_HYSTERESIS:F = 0.2f

.field private static DEBUG:Z = false

.field private static DEBUG_SPEW:Z = false

.field private static final LIGHT_SENSOR_RATE_MILLIS:I = 0x1f4

.field private static final LOGTAG:Ljava/lang/String; = "DisplayEffectService"

.field private static final MSG_PROXIMITY_SENSOR_DEBOUNCED:I = 0x2

.field private static final MSG_UPDATE_AMBIENT_LUX:I = 0x1

.field private static final PROXIMITY_NEGATIVE:I = 0x0

.field private static final PROXIMITY_POSITIVE:I = 0x1

.field private static final PROXIMITY_SENSOR_NEGATIVE_DEBOUNCE_DELAY:I = 0x0

.field private static final PROXIMITY_SENSOR_POSITIVE_DEBOUNCE_DELAY:I = 0x0

.field private static final PROXIMITY_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "LightSensorSample"

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f

.field private static final WEIGHTING_INTERCEPT:I = 0x2710

.field private static mInstance:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;


# instance fields
.field private mAmbientLightRingBuffer:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;

.field private mAmbientLux:F

.field private mAmbientLuxValid:Z

.field private mBrighteningLuxThreshold:F

.field private mCallback:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$Callback;

.field private mContext:Landroid/content/Context;

.field private mDarkeningLuxThreshold:F

.field private mEffectManager:Landroid/app/DisplayEffectManager;

.field private final mHandler:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$DisplayControllerHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsAutoBrightnessModeEnable:Z

.field private mIsSmartOutsideModeEnable:Z

.field private mLastObservedLux:F

.field private mLastObservedLuxTime:J

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorEnableTime:J

.field public mLightSensorEnabled:Z

.field final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private mLightSensorWarmUpTimeConfig:I

.field private final mLock:Ljava/lang/Object;

.field private mPendingProximity:I

.field private mPendingProximityDebounceTime:J

.field private mProximity:I

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorEnabled:Z

.field private final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private mProximityThreshold:F

.field private mRecentLightSamples:I

.field private mReport_State:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mSmartUltraBrightModeTurnOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->DEBUG:Z

    .line 28
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->DEBUG_SPEW:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mProximity:I

    .line 104
    iput v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mPendingProximity:I

    .line 147
    iput-boolean v2, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mIsSmartOutsideModeEnable:Z

    .line 148
    iput-boolean v2, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mIsAutoBrightnessModeEnable:Z

    .line 151
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mLock:Ljava/lang/Object;

    .line 466
    new-instance v1, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$1;

    invoke-direct {v1, p0}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$1;-><init>(Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;)V

    iput-object v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 485
    new-instance v1, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$2;

    invoke-direct {v1, p0}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$2;-><init>(Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;)V

    iput-object v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 509
    sget-object v1, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;->REPORT_STATE_INVALID:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;

    iput-object v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mReport_State:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;

    .line 716
    iput-boolean v2, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mSmartUltraBrightModeTurnOn:Z

    .line 164
    iput-object p1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mContext:Landroid/content/Context;

    .line 165
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "LightSensorSample"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mHandlerThread:Landroid/os/HandlerThread;

    .line 166
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 167
    new-instance v1, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$DisplayControllerHandler;

    iget-object v2, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$DisplayControllerHandler;-><init>(Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mHandler:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$DisplayControllerHandler;

    .line 168
    new-instance v1, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;

    invoke-direct {v1}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mAmbientLightRingBuffer:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;

    .line 170
    iput-object p1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mContext:Landroid/content/Context;

    .line 171
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mContext:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mSensorManager:Landroid/hardware/SensorManager;

    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 173
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x10e0057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mLightSensorWarmUpTimeConfig:I

    .line 176
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mProximitySensor:Landroid/hardware/Sensor;

    .line 177
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mProximityThreshold:F

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mLightSensor:Landroid/hardware/Sensor;

    .line 182
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->updateAmbientLux()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->debounceProximitySensor()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mProximitySensorEnabled:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;

    .prologue
    .line 25
    iget v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mProximityThreshold:F

    return v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->DEBUG:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;JZ)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->handleProximitySensorEvent(JZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;JF)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;
    .param p1, "x1"    # J
    .param p3, "x2"    # F

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->handleLightSensorEvent(JF)V

    return-void
.end method

.method private applyLightSensorMeasurement(JF)V
    .locals 5
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    .line 297
    iget v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mRecentLightSamples:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mRecentLightSamples:I

    .line 298
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mAmbientLightRingBuffer:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;

    const-wide/16 v2, 0x2710

    sub-long v2, p1, v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->prune(J)V

    .line 299
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mAmbientLightRingBuffer:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->push(JF)V

    .line 302
    iput p3, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mLastObservedLux:F

    .line 303
    iput-wide p1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mLastObservedLuxTime:J

    .line 304
    return-void
.end method

.method private calculateAmbientLux(J)F
    .locals 13
    .param p1, "now"    # J

    .prologue
    .line 314
    iget-object v10, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mAmbientLightRingBuffer:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;

    invoke-virtual {v10}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->size()I

    move-result v0

    .line 315
    .local v0, "N":I
    if-nez v0, :cond_0

    .line 316
    const-string v10, "LightSensorSample"

    const-string v11, "calculateAmbientLux: No ambient light readings available"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const/high16 v10, -0x40800000    # -1.0f

    .line 339
    :goto_0
    return v10

    .line 319
    :cond_0
    const/4 v5, 0x0

    .line 320
    .local v5, "sum":F
    const/4 v8, 0x0

    .line 321
    .local v8, "totalWeight":F
    const-wide/16 v2, 0x64

    .line 322
    .local v2, "endTime":J
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 323
    iget-object v10, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mAmbientLightRingBuffer:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;

    invoke-virtual {v10, v1}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v10

    sub-long v6, v10, p1

    .line 324
    .local v6, "startTime":J
    invoke-static {v6, v7, v2, v3}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->calculateWeight(JJ)F

    move-result v9

    .line 325
    .local v9, "weight":F
    iget-object v10, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mAmbientLightRingBuffer:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;

    invoke-virtual {v10, v1}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    .line 326
    .local v4, "lux":F
    sget-boolean v10, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->DEBUG:Z

    if-eqz v10, :cond_1

    .line 327
    const-string v10, "LightSensorSample"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "calculateAmbientLux: ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]: lux="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", weight="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_1
    add-float/2addr v8, v9

    .line 332
    iget-object v10, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mAmbientLightRingBuffer:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;

    invoke-virtual {v10, v1}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->getLux(I)F

    move-result v10

    mul-float/2addr v10, v9

    add-float/2addr v5, v10

    .line 333
    move-wide v2, v6

    .line 322
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 335
    .end local v4    # "lux":F
    .end local v6    # "startTime":J
    .end local v9    # "weight":F
    :cond_2
    sget-boolean v10, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->DEBUG:Z

    if-eqz v10, :cond_3

    .line 336
    const-string v10, "LightSensorSample"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "calculateAmbientLux: totalWeight="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", newAmbientLux="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    div-float v12, v5, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_3
    div-float v10, v5, v8

    goto/16 :goto_0
.end method

.method private static calculateWeight(JJ)F
    .locals 2
    .param p0, "startDelta"    # J
    .param p2, "endDelta"    # J

    .prologue
    .line 343
    invoke-static {p2, p3}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->weightIntegral(J)F

    move-result v0

    invoke-static {p0, p1}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->weightIntegral(J)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private debounceProximitySensor()V
    .locals 6

    .prologue
    .line 230
    iget v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mPendingProximity:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 231
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 232
    .local v2, "now":J
    iget-wide v4, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mPendingProximityDebounceTime:J

    cmp-long v1, v4, v2

    if-gtz v1, :cond_1

    .line 233
    iget v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mPendingProximity:I

    iput v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mProximity:I

    .line 240
    .end local v2    # "now":J
    :cond_0
    :goto_0
    return-void

    .line 236
    .restart local v2    # "now":J
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mHandler:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$DisplayControllerHandler;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 237
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mHandler:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$DisplayControllerHandler;

    iget-wide v4, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mPendingProximityDebounceTime:J

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$DisplayControllerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private enableDisplayEffectOutSideMode(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 720
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mContext:Landroid/content/Context;

    const-string v2, "display_effect"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/DisplayEffectManager;

    iput-object v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mEffectManager:Landroid/app/DisplayEffectManager;

    .line 721
    if-eqz p1, :cond_2

    .line 722
    const-string v1, "DisplayEffectService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lux: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mAmbientLux:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSmartUltraBrightModeTurnOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mSmartUltraBrightModeTurnOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    iget v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mAmbientLux:F

    const v2, 0x45bb8000    # 6000.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mSmartUltraBrightModeTurnOn:Z

    if-nez v1, :cond_1

    .line 725
    const-string v1, "DisplayEffectService"

    const-string v2, "enter_displayeffect_outside_mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mEffectManager:Landroid/app/DisplayEffectManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/app/DisplayEffectManager;->setModeFromSys(I)I

    .line 727
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mSmartUltraBrightModeTurnOn:Z

    .line 744
    :cond_0
    :goto_0
    return-void

    .line 728
    :cond_1
    iget v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mAmbientLux:F

    const/high16 v2, 0x44fa0000    # 2000.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mSmartUltraBrightModeTurnOn:Z

    if-eqz v1, :cond_0

    .line 730
    const-string v1, "DisplayEffectService"

    const-string v2, "exit_displayeffect_outside_mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_mode"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 733
    .local v0, "displayMode":I
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mEffectManager:Landroid/app/DisplayEffectManager;

    invoke-virtual {v1, v0}, Landroid/app/DisplayEffectManager;->setModeFromSys(I)I

    .line 734
    iput-boolean v4, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mSmartUltraBrightModeTurnOn:Z

    goto :goto_0

    .line 737
    .end local v0    # "displayMode":I
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mSmartUltraBrightModeTurnOn:Z

    if-eqz v1, :cond_0

    .line 738
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_mode"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 740
    .restart local v0    # "displayMode":I
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mEffectManager:Landroid/app/DisplayEffectManager;

    invoke-virtual {v1, v0}, Landroid/app/DisplayEffectManager;->setModeFromSys(I)I

    .line 741
    iput-boolean v4, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mSmartUltraBrightModeTurnOn:Z

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 154
    sget-object v0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mInstance:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;

    invoke-direct {v0, p0}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mInstance:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;

    .line 157
    :cond_0
    sget-object v0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mInstance:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;

    return-object v0
.end method

.method private handleLightSensorEvent(JF)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mHandler:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$DisplayControllerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$DisplayControllerHandler;->removeMessages(I)V

    .line 290
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 291
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->applyLightSensorMeasurement(JF)V

    .line 292
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->updateAmbientLux(J)V

    .line 293
    monitor-exit v1

    .line 294
    return-void

    .line 293
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleProximitySensorEvent(JZ)V
    .locals 7
    .param p1, "time"    # J
    .param p3, "positive"    # Z

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    .line 206
    iget v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mPendingProximity:I

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    iget v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mPendingProximity:I

    if-ne v0, v2, :cond_2

    if-nez p3, :cond_0

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mHandler:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$DisplayControllerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$DisplayControllerHandler;->removeMessages(I)V

    .line 216
    if-eqz p3, :cond_4

    .line 217
    iput v2, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mPendingProximity:I

    .line 218
    add-long v0, p1, v4

    iput-wide v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mPendingProximityDebounceTime:J

    .line 223
    :goto_1
    sget-boolean v0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 224
    const-string v0, "LightSensorSample"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPendingProximity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mPendingProximity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_3
    invoke-direct {p0}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->debounceProximitySensor()V

    goto :goto_0

    .line 220
    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mPendingProximity:I

    .line 221
    add-long v0, p1, v4

    iput-wide v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mPendingProximityDebounceTime:J

    goto :goto_1
.end method

.method private nextAmbientLightBrighteningTransition(J)J
    .locals 7
    .param p1, "time"    # J

    .prologue
    .line 353
    iget-object v4, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mAmbientLightRingBuffer:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;

    invoke-virtual {v4}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->size()I

    move-result v0

    .line 354
    .local v0, "N":I
    move-wide v2, p1

    .line 355
    .local v2, "earliestValidTime":J
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 356
    iget-object v4, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mAmbientLightRingBuffer:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;

    invoke-virtual {v4, v1}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    iget v5, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mBrighteningLuxThreshold:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    .line 361
    :cond_0
    const-wide/16 v4, 0x5dc

    add-long/2addr v4, v2

    return-wide v4

    .line 359
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mAmbientLightRingBuffer:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;

    invoke-virtual {v4, v1}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v2

    .line 355
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private nextAmbientLightDarkeningTransition(J)J
    .locals 7
    .param p1, "time"    # J

    .prologue
    .line 365
    iget-object v4, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mAmbientLightRingBuffer:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;

    invoke-virtual {v4}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->size()I

    move-result v0

    .line 366
    .local v0, "N":I
    move-wide v2, p1

    .line 367
    .local v2, "earliestValidTime":J
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 368
    iget-object v4, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mAmbientLightRingBuffer:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;

    invoke-virtual {v4, v1}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    iget v5, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mDarkeningLuxThreshold:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    .line 373
    :cond_0
    const-wide/16 v4, 0x1388

    add-long/2addr v4, v2

    return-wide v4

    .line 371
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mAmbientLightRingBuffer:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;

    invoke-virtual {v4, v1}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v2

    .line 367
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private setAmbientLux(F)V
    .locals 2
    .param p1, "lux"    # F

    .prologue
    .line 308
    iput p1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mAmbientLux:F

    .line 309
    iget v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mAmbientLux:F

    const v1, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mBrighteningLuxThreshold:F

    .line 310
    iget v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mAmbientLux:F

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mDarkeningLuxThreshold:F

    .line 311
    return-void
.end method

.method private setProximitySensorEnabled(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, -0x1

    .line 185
    const-string v0, "LightSensorSample"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Psensor enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--mProximitySensorEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mProximitySensorEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    if-eqz p1, :cond_1

    .line 187
    iget-boolean v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mProximitySensorEnabled:Z

    if-nez v0, :cond_0

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mProximitySensorEnabled:Z

    .line 189
    iput v3, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mPendingProximity:I

    .line 190
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mHandler:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$DisplayControllerHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 192
    const-string v0, "LightSensorSample"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Psensor reg -- mProximitySensorEnabled ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mProximitySensorEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_0

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mProximitySensorEnabled:Z

    .line 197
    iput v3, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mProximity:I

    .line 198
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mHandler:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$DisplayControllerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$DisplayControllerHandler;->removeMessages(I)V

    .line 199
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 200
    const-string v0, "LightSensorSample"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Psensor unreg -- mProximitySensorEnabled ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mProximitySensorEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateAmbientLux()V
    .locals 6

    .prologue
    .line 377
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 378
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mAmbientLightRingBuffer:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;

    const-wide/16 v4, 0x2710

    sub-long v4, v0, v4

    invoke-virtual {v2, v4, v5}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->prune(J)V

    .line 379
    invoke-direct {p0, v0, v1}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->updateAmbientLux(J)V

    .line 380
    return-void
.end method

.method private updateAmbientLux(J)V
    .locals 17
    .param p1, "time"    # J

    .prologue
    .line 385
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mAmbientLuxValid:Z

    if-nez v3, :cond_6

    .line 386
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mLightSensorWarmUpTimeConfig:I

    int-to-long v12, v3

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mLightSensorEnableTime:J

    add-long v10, v12, v14

    .line 388
    .local v10, "timeWhenSensorWarmedUp":J
    cmp-long v3, p1, v10

    if-gez v3, :cond_2

    .line 389
    sget-boolean v3, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->DEBUG:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->DEBUG_SPEW:Z

    if-eqz v3, :cond_1

    .line 390
    :cond_0
    const-string v3, "LightSensorSample"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateAmbientLux: Sensor not  ready yet: time="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p1

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", timeWhenSensorWarmedUp="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mHandler:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$DisplayControllerHandler;

    const/4 v12, 0x1

    invoke-virtual {v3, v12, v10, v11}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$DisplayControllerHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 444
    .end local v10    # "timeWhenSensorWarmedUp":J
    :goto_0
    return-void

    .line 398
    .restart local v10    # "timeWhenSensorWarmedUp":J
    :cond_2
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->calculateAmbientLux(J)F

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->setAmbientLux(F)V

    .line 399
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mAmbientLuxValid:Z

    .line 400
    sget-boolean v3, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->DEBUG:Z

    if-nez v3, :cond_3

    sget-boolean v3, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->DEBUG_SPEW:Z

    if-eqz v3, :cond_4

    .line 401
    :cond_3
    const-string v3, "LightSensorSample"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateAmbientLux: Initializing: mAmbientLightRingBuffer="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mAmbientLightRingBuffer:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mAmbientLux="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mAmbientLux:F

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mIsAutoBrightnessModeEnable:Z

    if-eqz v3, :cond_5

    .line 406
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->updateAutoBrightness()V

    .line 408
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mIsSmartOutsideModeEnable:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->enableDisplayEffectOutSideMode(Z)V

    .line 410
    .end local v10    # "timeWhenSensorWarmedUp":J
    :cond_6
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->nextAmbientLightBrighteningTransition(J)J

    move-result-wide v4

    .line 411
    .local v4, "nextBrightenTransition":J
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->nextAmbientLightDarkeningTransition(J)J

    move-result-wide v6

    .line 412
    .local v6, "nextDarkenTransition":J
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->calculateAmbientLux(J)F

    move-result v2

    .line 413
    .local v2, "ambientLux":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mBrighteningLuxThreshold:F

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_7

    cmp-long v3, v4, p1

    if-lez v3, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mDarkeningLuxThreshold:F

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_c

    cmp-long v3, v6, p1

    if-gtz v3, :cond_c

    .line 415
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->setAmbientLux(F)V

    .line 416
    sget-boolean v3, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->DEBUG:Z

    if-nez v3, :cond_9

    sget-boolean v3, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->DEBUG_SPEW:Z

    if-eqz v3, :cond_a

    .line 417
    :cond_9
    const-string v12, "LightSensorSample"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateAmbientLux: "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mAmbientLux:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_f

    const-string v3, "Brightened"

    :goto_1
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ": "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "mBrighteningLuxThreshold="

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mBrighteningLuxThreshold:F

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ", mAmbientLightRingBuffer="

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mAmbientLightRingBuffer:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ", mAmbientLux="

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mAmbientLux:F

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mIsAutoBrightnessModeEnable:Z

    if-eqz v3, :cond_b

    .line 424
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->updateAutoBrightness()V

    .line 426
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mIsSmartOutsideModeEnable:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->enableDisplayEffectOutSideMode(Z)V

    .line 427
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->nextAmbientLightBrighteningTransition(J)J

    move-result-wide v4

    .line 428
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->nextAmbientLightDarkeningTransition(J)J

    move-result-wide v6

    .line 430
    :cond_c
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 437
    .local v8, "nextTransitionTime":J
    cmp-long v3, v8, p1

    if-lez v3, :cond_10

    .line 439
    :goto_2
    sget-boolean v3, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->DEBUG:Z

    if-nez v3, :cond_d

    sget-boolean v3, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->DEBUG_SPEW:Z

    if-eqz v3, :cond_e

    .line 440
    :cond_d
    const-string v3, "LightSensorSample"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateAmbientLux: Scheduling ambient lux update for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v8, v9}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mHandler:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$DisplayControllerHandler;

    const/4 v12, 0x1

    invoke-virtual {v3, v12, v8, v9}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$DisplayControllerHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    .line 417
    .end local v8    # "nextTransitionTime":J
    :cond_f
    const-string v3, "Darkened"

    goto/16 :goto_1

    .line 437
    .restart local v8    # "nextTransitionTime":J
    :cond_10
    const-wide/16 v12, 0x3e8

    add-long v8, p1, v12

    goto :goto_2
.end method

.method private static weightIntegral(J)F
    .locals 4
    .param p0, "x"    # J

    .prologue
    .line 349
    long-to-float v0, p0

    long-to-float v1, p0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    const v2, 0x461c4000    # 10000.0f

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public init(Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$Callback;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$Callback;

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mCallback:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$Callback;

    if-eq v0, p1, :cond_0

    .line 555
    iput-object p1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mCallback:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$Callback;

    .line 557
    :cond_0
    return-void
.end method

.method public reCalcateLightSensorSample()V
    .locals 3

    .prologue
    .line 279
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 280
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mAmbientLuxValid:Z

    .line 281
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mRecentLightSamples:I

    .line 282
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mAmbientLightRingBuffer:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;

    invoke-virtual {v0}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->clear()V

    .line 283
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mHandler:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$DisplayControllerHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$DisplayControllerHandler;->removeMessages(I)V

    .line 284
    sget-object v0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;->REPORT_FIRST_DATA:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;

    iput-object v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mReport_State:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;

    .line 285
    monitor-exit v1

    .line 286
    return-void

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public refreshAutoBrightness()V
    .locals 2

    .prologue
    .line 548
    iget-boolean v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mAmbientLuxValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mCallback:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$Callback;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mCallback:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$Callback;

    iget v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mAmbientLux:F

    invoke-interface {v0, v1}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$Callback;->updateDataImmediately(F)V

    .line 551
    :cond_0
    return-void
.end method

.method public setAutoBrightnessMode(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 275
    iput-boolean p1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mIsAutoBrightnessModeEnable:Z

    .line 276
    return-void
.end method

.method public setLightSensorEnabled(Z)Z
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 243
    const-string v2, "LightSensorSample"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LightSensor enable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "--mLightSensorEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mLightSensorEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    if-eqz p1, :cond_0

    .line 245
    iget-boolean v2, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mLightSensorEnabled:Z

    if-nez v2, :cond_2

    .line 247
    iput-boolean v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mLightSensorEnabled:Z

    .line 248
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mLightSensorEnableTime:J

    .line 250
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mLightSensor:Landroid/hardware/Sensor;

    const v4, 0x7a120

    iget-object v5, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mHandler:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$DisplayControllerHandler;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 266
    :goto_0
    return v0

    .line 255
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 256
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mLightSensorEnabled:Z

    if-eqz v0, :cond_1

    .line 257
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mLightSensorEnabled:Z

    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mAmbientLuxValid:Z

    .line 259
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mRecentLightSamples:I

    .line 260
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mAmbientLightRingBuffer:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;

    invoke-virtual {v0}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->clear()V

    .line 261
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mHandler:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$DisplayControllerHandler;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$DisplayControllerHandler;->removeMessages(I)V

    .line 262
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 264
    :cond_1
    monitor-exit v2

    :cond_2
    move v0, v1

    .line 266
    goto :goto_0

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSmartOutsideMode(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 270
    const-string v0, "DisplayEffectService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSmartOutsideMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iput-boolean p1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mIsSmartOutsideModeEnable:Z

    .line 272
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 524
    sget-object v0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;->REPORT_FIRST_DATA:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;

    iput-object v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mReport_State:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;

    .line 525
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->setLightSensorEnabled(Z)Z

    .line 526
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 529
    sget-object v0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;->REPORT_SHUTDOWN:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;

    iput-object v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mReport_State:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;

    .line 530
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->setLightSensorEnabled(Z)Z

    .line 532
    return-void
.end method

.method public updateAutoBrightness()V
    .locals 3

    .prologue
    .line 535
    iget-boolean v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mAmbientLuxValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mCallback:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$Callback;

    if-nez v0, :cond_1

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    const-string v0, "LightSensorSample"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update lux value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mAmbientLux:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mReport_State:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;

    sget-object v1, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;->REPORT_FIRST_DATA:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;

    if-ne v0, v1, :cond_2

    .line 540
    sget-object v0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;->REPORT_NORMAL_DATA:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;

    iput-object v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mReport_State:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;

    .line 541
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mCallback:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$Callback;

    iget v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mAmbientLux:F

    invoke-interface {v0, v1}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$Callback;->updateDataImmediately(F)V

    goto :goto_0

    .line 542
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mReport_State:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;

    sget-object v1, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;->REPORT_NORMAL_DATA:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mProximity:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 543
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mCallback:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$Callback;

    iget v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mAmbientLux:F

    invoke-interface {v0, v1}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$Callback;->updateData(F)V

    goto :goto_0
.end method
