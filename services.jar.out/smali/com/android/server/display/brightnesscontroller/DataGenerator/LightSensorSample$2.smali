.class Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$2;
.super Ljava/lang/Object;
.source "LightSensorSample.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;


# direct methods
.method constructor <init>(Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;)V
    .locals 0

    .prologue
    .line 485
    iput-object p1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$2;->this$0:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 499
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 488
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$2;->this$0:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;

    iget-boolean v1, v1, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mLightSensorEnabled:Z

    if-eqz v1, :cond_0

    .line 489
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 490
    .local v2, "time":J
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v0, v1, v4

    .line 491
    .local v0, "lux":F
    const-string v1, "LightSensorSample"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSensorChanged lux:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$2;->this$0:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;

    # invokes: Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->handleLightSensorEvent(JF)V
    invoke-static {v1, v2, v3, v0}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->access$600(Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;JF)V

    .line 494
    .end local v0    # "lux":F
    .end local v2    # "time":J
    :cond_0
    return-void
.end method
