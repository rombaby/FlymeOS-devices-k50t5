.class final Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$DisplayControllerHandler;
.super Landroid/os/Handler;
.source "LightSensorSample.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;


# direct methods
.method public constructor <init>(Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 448
    iput-object p1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$DisplayControllerHandler;->this$0:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;

    .line 449
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 450
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 454
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 463
    :goto_0
    return-void

    .line 456
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$DisplayControllerHandler;->this$0:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;

    # invokes: Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->updateAmbientLux()V
    invoke-static {v0}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->access$000(Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;)V

    goto :goto_0

    .line 459
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$DisplayControllerHandler;->this$0:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;

    # invokes: Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->debounceProximitySensor()V
    invoke-static {v0}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->access$100(Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;)V

    goto :goto_0

    .line 454
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
