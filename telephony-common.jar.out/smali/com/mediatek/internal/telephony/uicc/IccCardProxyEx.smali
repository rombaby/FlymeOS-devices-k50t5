.class public Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;
.super Landroid/os/Handler;
.source "IccCardProxyEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx$1;
    }
.end annotation


# static fields
.field private static final APPLICATION_ID_ISIM:I = 0x0

.field private static final APPLICATION_ID_MAX:I = 0x1

.field private static final DBG:Z = true

.field private static final EVENT_APP_READY:I = 0x3

.field private static final EVENT_ICC_CHANGED:I = 0x2

.field private static final EVENT_NOT_AVAILABLE:I = 0x1

.field private static final EVENT_RECORDS_LOADED:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "IccCardProxyEx"


# instance fields
.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrentAppType:I

.field private mExternalState:[Lcom/android/internal/telephony/IccCardConstants$State;

.field private mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

.field private final mLock:Ljava/lang/Object;

.field private mSlotId:I

.field private mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v5, 0x0

    const/16 v2, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 96
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 73
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mLock:Ljava/lang/Object;

    .line 80
    const/4 v1, 0x3

    iput v1, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mCurrentAppType:I

    .line 81
    iput-object v5, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 83
    iput-object v5, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    .line 84
    new-array v1, v2, [Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 86
    new-array v1, v2, [Lcom/android/internal/telephony/uicc/IccRecords;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    .line 89
    new-array v1, v4, [Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mExternalState:[Lcom/android/internal/telephony/IccCardConstants$State;

    .line 97
    iput-object p2, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mContext:Landroid/content/Context;

    .line 98
    iput-object p3, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 100
    iput p1, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mSlotId:I

    .line 102
    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mSlotId:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 103
    .local v0, "index":Ljava/lang/Integer;
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 104
    invoke-interface {p3, p0, v4, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 105
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v2, v0}, Lcom/android/internal/telephony/uicc/UiccController;->registerForApplicationChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 107
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v1, v3}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    .line 108
    const-string v1, "Creating"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->log(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;-><init>(ILandroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 94
    return-void
.end method

.method private broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "appId"    # I

    .prologue
    .line 249
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 251
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "mediatek.intent.action.ACTION_SIM_STATE_CHANGED_MULTI_APPLICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "phoneName"

    const-string v3, "Phone"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    const-string v1, "ss"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    const-string v1, "reason"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mSlotId:I

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 257
    const-string v1, "appId"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting intent ACTION_SIM_STATE_CHANGED_MULTI_APPLICATION "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " reason "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " slotd id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mSlotId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " app id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->log(Ljava/lang/String;)V

    .line 260
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v3, -0x1

    invoke-static {v0, v1, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 262
    monitor-exit v2

    .line 263
    return-void

    .line 262
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;
    .locals 2
    .param p1, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 287
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx$1;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 296
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 288
    :pswitch_0
    const-string v0, "ABSENT"

    goto :goto_0

    .line 289
    :pswitch_1
    const-string v0, "LOCKED"

    goto :goto_0

    .line 290
    :pswitch_2
    const-string v0, "LOCKED"

    goto :goto_0

    .line 291
    :pswitch_3
    const-string v0, "LOCKED"

    goto :goto_0

    .line 292
    :pswitch_4
    const-string v0, "READY"

    goto :goto_0

    .line 293
    :pswitch_5
    const-string v0, "NOT_READY"

    goto :goto_0

    .line 294
    :pswitch_6
    const-string v0, "LOCKED"

    goto :goto_0

    .line 295
    :pswitch_7
    const-string v0, "CARD_IO_ERROR"

    goto :goto_0

    .line 287
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private getIccStateReason(Lcom/android/internal/telephony/IccCardConstants$State;I)Ljava/lang/String;
    .locals 3
    .param p1, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "appId"    # I

    .prologue
    const/4 v0, 0x0

    .line 305
    sget-object v1, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx$1;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 319
    :goto_0
    :pswitch_0
    return-object v0

    .line 306
    :pswitch_1
    const-string v0, "PIN"

    goto :goto_0

    .line 307
    :pswitch_2
    const-string v0, "PUK"

    goto :goto_0

    .line 309
    :pswitch_3
    sget-object v1, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx$1;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$PersoSubState:[I

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 310
    :pswitch_4
    const-string v0, "NETWORK"

    goto :goto_0

    .line 311
    :pswitch_5
    const-string v0, "NETWORK_SUBSET"

    goto :goto_0

    .line 312
    :pswitch_6
    const-string v0, "CORPORATE"

    goto :goto_0

    .line 313
    :pswitch_7
    const-string v0, "SERVICE_PROVIDER"

    goto :goto_0

    .line 314
    :pswitch_8
    const-string v0, "SIM"

    goto :goto_0

    .line 317
    :pswitch_9
    const-string v0, "PERM_DISABLED"

    goto :goto_0

    .line 318
    :pswitch_a
    const-string v0, "CARD_IO_ERROR"

    goto :goto_0

    .line 305
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 309
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private getIndex(Landroid/os/Message;)Ljava/lang/Integer;
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 362
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 369
    .local v1, "index":Ljava/lang/Integer;
    if-eqz p1, :cond_0

    .line 370
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 371
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1    # "index":Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .line 379
    .restart local v1    # "index":Ljava/lang/Integer;
    :cond_0
    :goto_0
    return-object v1

    .line 372
    :cond_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Landroid/os/AsyncResult;

    if-eqz v2, :cond_0

    .line 373
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 374
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 375
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v1    # "index":Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .restart local v1    # "index":Ljava/lang/Integer;
    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 384
    const-string v1, "IccCardProxyEx"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIM"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mSlotId:I

    if-nez v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    return-void

    .line 384
    :cond_0
    const-string v0, "2"

    goto :goto_0
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 388
    const-string v1, "IccCardProxyEx"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIM"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mSlotId:I

    if-nez v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    return-void

    .line 388
    :cond_0
    const-string v0, "2"

    goto :goto_0
.end method

.method private registerUiccCardEvents(I)V
    .locals 3
    .param p1, "appId"    # I

    .prologue
    .line 234
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 235
    .local v0, "aid":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, p1

    const/4 v2, 0x3

    invoke-virtual {v1, p0, v2, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 238
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v1, v1, p1

    if-eqz v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v1, v1, p1

    const/4 v2, 0x4

    invoke-virtual {v1, p0, v2, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 241
    :cond_1
    return-void
.end method

.method private setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    .locals 2
    .param p1, "newState"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "appId"    # I

    .prologue
    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExternalState(): newState =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " appId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->log(Ljava/lang/String;)V

    .line 283
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;ZI)V

    .line 284
    return-void
.end method

.method private setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;ZI)V
    .locals 3
    .param p1, "newState"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "override"    # Z
    .param p3, "appId"    # I

    .prologue
    .line 266
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 267
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExternalState(): mExternalState = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mExternalState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, p3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " newState =  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " override = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->log(Ljava/lang/String;)V

    .line 270
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mExternalState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v0, v0, p3

    if-ne p1, v0, :cond_0

    .line 271
    monitor-exit v1

    .line 279
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mExternalState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object p1, v0, p3

    .line 276
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mExternalState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v0, v0, p3

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mExternalState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, p3

    invoke-direct {p0, v2, p3}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->getIccStateReason(Lcom/android/internal/telephony/IccCardConstants$State;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p3}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;I)V

    .line 278
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private unregisterUiccCardEvents(I)V
    .locals 1
    .param p1, "appId"    # I

    .prologue
    .line 244
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v0, v0, p1

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v0, v0, p1

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 246
    :cond_1
    return-void
.end method

.method private updateExternalState(I)V
    .locals 2
    .param p1, "appId"    # I

    .prologue
    .line 202
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-nez v0, :cond_0

    .line 203
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0, p1}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    .line 231
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v0, v0, p1

    if-nez v0, :cond_2

    .line 207
    :cond_1
    const-string v0, "updateExternalState = ABENT"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->log(Ljava/lang/String;)V

    .line 208
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0, p1}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    goto :goto_0

    .line 212
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CardState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->log(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v0, v1, :cond_3

    .line 215
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0, p1}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    goto :goto_0

    .line 219
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "application state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->log(Ljava/lang/String;)V

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUiccApplication[appId] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->log(Ljava/lang/String;)V

    .line 222
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx$1;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$AppState:[I

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 225
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0, p1}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    goto/16 :goto_0

    .line 228
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0, p1}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    goto/16 :goto_0

    .line 222
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateIccAvailability(I)V
    .locals 8
    .param p1, "appId"    # I

    .prologue
    .line 164
    iget-object v6, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 165
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v7, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mSlotId:I

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    .line 166
    .local v2, "newCard":Lcom/android/internal/telephony/uicc/UiccCard;
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 167
    .local v4, "state":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    const/4 v1, 0x0

    .line 168
    .local v1, "newApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const/4 v3, 0x0

    .line 169
    .local v3, "newRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    const/4 v0, 0x0

    .line 171
    .local v0, "appType":I
    packed-switch p1, :pswitch_data_0

    .line 179
    :goto_0
    if-eqz v2, :cond_0

    .line 180
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v4

    .line 181
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    .line 182
    if-eqz v1, :cond_0

    .line 183
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    .line 187
    :cond_0
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v5, v5, p1

    if-ne v5, v3, :cond_1

    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v5, v5, p1

    if-ne v5, v1, :cond_1

    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eq v5, v2, :cond_2

    .line 188
    :cond_1
    const-string v5, "Icc changed. Reregestering."

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->log(Ljava/lang/String;)V

    .line 189
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->unregisterUiccCardEvents(I)V

    .line 190
    iput-object v2, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    .line 191
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aput-object v1, v5, p1

    .line 192
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aput-object v3, v5, p1

    .line 193
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->registerUiccCardEvents(I)V

    .line 196
    :cond_2
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->updateExternalState(I)V

    .line 197
    monitor-exit v6

    .line 198
    return-void

    .line 173
    :pswitch_0
    const/4 v0, 0x3

    .line 174
    goto :goto_0

    .line 197
    .end local v0    # "appType":I
    .end local v1    # "newApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v2    # "newCard":Lcom/android/internal/telephony/uicc/UiccCard;
    .end local v3    # "newRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v4    # "state":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 171
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 112
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 113
    :try_start_0
    const-string v0, "Disposing"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->log(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 116
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForApplicationChanged(Landroid/os/Handler;)V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 118
    monitor-exit v1

    .line 119
    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIccFileHandler(I)Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 2
    .param p1, "appId"    # I

    .prologue
    .line 351
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    monitor-exit v1

    .line 355
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIccRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 3
    .param p1, "family"    # I

    .prologue
    .line 331
    const/4 v0, -0x1

    .line 332
    .local v0, "appId":I
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 333
    packed-switch p1, :pswitch_data_0

    .line 338
    :try_start_0
    const-string v1, "Not Support"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->log(Ljava/lang/String;)V

    .line 342
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v1, v1, v0

    monitor-exit v2

    .line 345
    :goto_1
    return-object v1

    .line 335
    :pswitch_0
    const/4 v0, 0x0

    .line 336
    goto :goto_0

    .line 345
    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_1

    .line 347
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 333
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public getState(I)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 2
    .param p1, "appId"    # I

    .prologue
    .line 324
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 325
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mExternalState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v0, v0, p1

    monitor-exit v1

    return-object v0

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 124
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receive message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->log(Ljava/lang/String;)V

    .line 126
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->getIndex(Landroid/os/Message;)Ljava/lang/Integer;

    move-result-object v3

    .line 128
    .local v3, "index":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mSlotId:I

    if-eq v4, v5, :cond_2

    .line 129
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid index : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " received with event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->loge(Ljava/lang/String;)V

    .line 161
    :cond_1
    :goto_0
    return-void

    .line 133
    :cond_2
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unhandled message with number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :pswitch_0
    const-string v4, "handleMessage (EVENT_NOT_AVAILABLE)"

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->log(Ljava/lang/String;)V

    .line 136
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/4 v4, 0x1

    if-ge v2, v4, :cond_1

    .line 137
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v4, v2}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    .line 136
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 142
    .end local v2    # "i":I
    :pswitch_1
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->updateIccAvailability(I)V

    goto :goto_0

    .line 146
    :pswitch_2
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    move-object v1, v4

    check-cast v1, Landroid/os/AsyncResult;

    .line 147
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v4, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 148
    .local v0, "appId":I
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v4, v0}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    goto :goto_0

    .line 152
    .end local v0    # "appId":I
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    move-object v1, v4

    check-cast v1, Landroid/os/AsyncResult;

    .line 153
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 154
    .restart local v0    # "appId":I
    const-string v4, "LOADED"

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v0}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
