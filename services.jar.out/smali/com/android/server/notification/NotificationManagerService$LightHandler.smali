.class Lcom/android/server/notification/NotificationManagerService$LightHandler;
.super Landroid/os/Handler;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LightHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    .prologue
    .line 3424
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p2, "x1"    # Lcom/android/server/notification/NotificationManagerService$1;

    .prologue
    .line 3424
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$LightHandler;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0xc30

    const/16 v5, 0x410

    const v4, -0xff0100

    const/4 v3, 0x1

    .line 3428
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3429
    .local v0, "currentMSG":I
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->oldLightMSG:I
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$6200(Lcom/android/server/notification/NotificationManagerService;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 3430
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # setter for: Lcom/android/server/notification/NotificationManagerService;->oldLightMSG:I
    invoke-static {v1, v0}, Lcom/android/server/notification/NotificationManagerService;->access$6202(Lcom/android/server/notification/NotificationManagerService;I)I

    .line 3437
    :goto_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->oldLightMSG:I
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$6200(Lcom/android/server/notification/NotificationManagerService;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->newLightMSG:I
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$6300(Lcom/android/server/notification/NotificationManagerService;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 3495
    :goto_1
    return-void

    .line 3431
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->newLightMSG:I
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$6300(Lcom/android/server/notification/NotificationManagerService;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 3432
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # setter for: Lcom/android/server/notification/NotificationManagerService;->newLightMSG:I
    invoke-static {v1, v0}, Lcom/android/server/notification/NotificationManagerService;->access$6302(Lcom/android/server/notification/NotificationManagerService;I)I

    goto :goto_0

    .line 3434
    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->newLightMSG:I
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$6300(Lcom/android/server/notification/NotificationManagerService;)I

    move-result v2

    # setter for: Lcom/android/server/notification/NotificationManagerService;->oldLightMSG:I
    invoke-static {v1, v2}, Lcom/android/server/notification/NotificationManagerService;->access$6202(Lcom/android/server/notification/NotificationManagerService;I)I

    .line 3435
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # setter for: Lcom/android/server/notification/NotificationManagerService;->newLightMSG:I
    invoke-static {v1, v0}, Lcom/android/server/notification/NotificationManagerService;->access$6302(Lcom/android/server/notification/NotificationManagerService;I)I

    goto :goto_0

    .line 3440
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 3442
    :pswitch_0
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->setFlagToBSP(I)V

    .line 3443
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;

    move-result-object v1

    invoke-virtual {v1, v4, v3, v5, v6}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto :goto_1

    .line 3447
    :pswitch_1
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->setFlagToBSP(I)V

    .line 3448
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;

    move-result-object v1

    invoke-virtual {v1, v4, v3, v5, v6}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto :goto_1

    .line 3452
    :pswitch_2
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->setFlagToBSP(I)V

    .line 3453
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;

    move-result-object v1

    invoke-virtual {v1, v4, v3, v5, v6}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto :goto_1

    .line 3457
    :pswitch_3
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->setFlagToBSP(I)V

    .line 3458
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;

    move-result-object v1

    invoke-virtual {v1, v4, v3, v5, v6}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto :goto_1

    .line 3462
    :pswitch_4
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->setFlagToBSP(I)V

    .line 3463
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;

    move-result-object v1

    invoke-virtual {v1, v4, v3, v5, v6}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto :goto_1

    .line 3467
    :pswitch_5
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->setFlagToBSP(I)V

    .line 3468
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;

    move-result-object v1

    invoke-virtual {v1, v4, v3, v5, v6}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto :goto_1

    .line 3472
    :pswitch_6
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->setFlagToBSP(I)V

    .line 3473
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;

    move-result-object v1

    invoke-virtual {v1, v4, v3, v5, v6}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto/16 :goto_1

    .line 3477
    :pswitch_7
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->LIGHT_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isCharing"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3478
    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->setFlagToBSP(I)V

    .line 3479
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/lights/Light;->turnOff()V

    goto/16 :goto_1

    .line 3484
    :pswitch_8
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->LIGHT_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isCharingFULL"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3485
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->setFlagToBSP(I)V

    .line 3486
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;

    move-result-object v1

    invoke-virtual {v1, v4, v3, v7, v7}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto/16 :goto_1

    .line 3490
    :pswitch_9
    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->setFlagToBSP(I)V

    .line 3491
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/lights/Light;->turnOff()V

    .line 3492
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->LIGHT_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Led-Light:   Not Set Led !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3440
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
