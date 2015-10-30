.class public abstract Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;
.super Landroid/os/Handler;
.source "IratDataSwitchHelper.java"


# static fields
.field protected static final EVENT_CDMA_DATA_ALLOW_URC:I = 0x4

.field protected static final EVENT_CDMA_DATA_ATTACHED:I = 0x0

.field protected static final EVENT_CDMA_DATA_DETACHED:I = 0x2

.field protected static final EVENT_CDMA_SET_DATA_ALLOW_DONE:I = 0x6

.field protected static final EVENT_LTE_DATA_ALLOW_URC:I = 0x5

.field protected static final EVENT_LTE_DATA_ATTACHED:I = 0x1

.field protected static final EVENT_LTE_DATA_DETACHED:I = 0x3

.field protected static final EVENT_LTE_SET_DATA_ALLOW_DONE:I = 0x7

.field protected static final LOG_TAG:Ljava/lang/String; = "[IRAT_DSH]"


# instance fields
.field protected mAttachedRegistrants:Landroid/os/RegistrantList;

.field protected mCdmaCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

.field protected mDataAllowResponseMessage:Landroid/os/Message;

.field protected mDataAllowedRegistrants:Landroid/os/RegistrantList;

.field protected mDetachedRegistrants:Landroid/os/RegistrantList;

.field protected mLteCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected mLtePhone:Lcom/android/internal/telephony/PhoneBase;

.field protected mPsServiceType:I

.field protected mSvltePhoneProxy:Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;)V
    .locals 1
    .param p1, "svltePhoneProxy"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 41
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mDataAllowedRegistrants:Landroid/os/RegistrantList;

    .line 42
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mAttachedRegistrants:Landroid/os/RegistrantList;

    .line 43
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mDetachedRegistrants:Landroid/os/RegistrantList;

    .line 50
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mSvltePhoneProxy:Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    .line 51
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mSvltePhoneProxy:Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    .line 52
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mSvltePhoneProxy:Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 53
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mLteCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 54
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mCdmaCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 56
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->registerForAllEvents()V

    .line 57
    return-void
.end method

.method private registerForAllEvents()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerForAllEvents: mPsServiceType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mPsServiceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->log(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mCdmaCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerSetDataAllowed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mLteCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x5

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerSetDataAllowed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 78
    return-void
.end method

.method private unregisterForAllEvents()V
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterForAllEvents: mPsServiceType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mPsServiceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->log(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataConnectionAttached(Landroid/os/Handler;)V

    .line 84
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataConnectionAttached(Landroid/os/Handler;)V

    .line 86
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataConnectionDetached(Landroid/os/Handler;)V

    .line 88
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataConnectionDetached(Landroid/os/Handler;)V

    .line 90
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mCdmaCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterSetDataAllowed(Landroid/os/Handler;)V

    .line 91
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mLteCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterSetDataAllowed(Landroid/os/Handler;)V

    .line 92
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->unregisterForAllEvents()V

    .line 64
    return-void
.end method

.method protected getCurrentDataConnectionState(Lcom/android/internal/telephony/PhoneBase;)I
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 196
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v0

    return v0
.end method

.method protected getSvltePhoneProxyMode()I
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x3

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->log(Ljava/lang/String;)V

    .line 207
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled message with number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->log(Ljava/lang/String;)V

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 209
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->onCdmaDataAttached()V

    goto :goto_0

    .line 212
    :pswitch_1
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->onLteDataAttached()V

    goto :goto_0

    .line 215
    :pswitch_2
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->onCdmaDataDetached()V

    goto :goto_0

    .line 218
    :pswitch_3
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->onLteDataDetached()V

    goto :goto_0

    .line 222
    :pswitch_4
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->needCdmaDataAllowedUrc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->onCdmaDataAllowUrc()V

    goto :goto_0

    .line 227
    :pswitch_5
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->onGsmDataAllowUrc()V

    goto :goto_0

    .line 230
    :pswitch_6
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->onCdmaSetDataAllowedDone()V

    goto :goto_0

    .line 233
    :pswitch_7
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->onGsmSetDataAllowedDone()V

    goto :goto_0

    .line 207
    :pswitch_data_0
    .packed-switch 0x0
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

.method protected abstract log(Ljava/lang/String;)V
.end method

.method protected abstract loge(Ljava/lang/String;)V
.end method

.method protected needCdmaDataAllowedUrc()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 245
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->getInstance()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->getSvlteRatMode()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->isLteOn()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 246
    const-string v4, "Lte is ON, LTE will report DATA_ALLOW_URC if needed"

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->log(Ljava/lang/String;)V

    .line 266
    :goto_0
    return v3

    .line 250
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 251
    .local v0, "cnt":I
    const/4 v4, 0x2

    if-lt v0, v4, :cond_1

    .line 252
    const-string v4, "ril.iccid.sim2"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, "sim2":Ljava/lang/String;
    const-string v4, "persist.radio.data.iccid"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "default_icc":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sim2 iccid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->log(Ljava/lang/String;)V

    .line 256
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "default_icc"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->log(Ljava/lang/String;)V

    .line 258
    if-eqz v2, :cond_1

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "N/A"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 260
    const-string v4, "LTE is disabled, need C2K report DATA_ALLOW_URC"

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 265
    .end local v1    # "default_icc":Ljava/lang/String;
    .end local v2    # "sim2":Ljava/lang/String;
    :cond_1
    const-string v3, "Data SIM is unset or at SIM1, and LTE is disabled, pass it to DctController"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->log(Ljava/lang/String;)V

    .line 266
    const/4 v3, 0x1

    goto :goto_0
.end method

.method protected abstract onCdmaDataAllowUrc()V
.end method

.method protected abstract onCdmaDataAttached()V
.end method

.method protected abstract onCdmaDataDetached()V
.end method

.method protected abstract onCdmaSetDataAllowedDone()V
.end method

.method protected abstract onGsmDataAllowUrc()V
.end method

.method protected abstract onGsmSetDataAllowedDone()V
.end method

.method protected abstract onLteDataAttached()V
.end method

.method protected abstract onLteDataDetached()V
.end method

.method public registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 133
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 134
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 136
    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mPsServiceType:I

    if-nez v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->getCurrentDataConnectionState(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v1

    if-nez v1, :cond_0

    .line 138
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mPsServiceType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 141
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->getCurrentDataConnectionState(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v1

    if-nez v1, :cond_0

    .line 142
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    goto :goto_0

    .line 144
    :cond_2
    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mPsServiceType:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 145
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->getCurrentDataConnectionState(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->getCurrentDataConnectionState(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v1

    if-nez v1, :cond_0

    .line 147
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    goto :goto_0
.end method

.method public registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 168
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 169
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 171
    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mPsServiceType:I

    if-nez v1, :cond_1

    .line 172
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->getCurrentDataConnectionState(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mPsServiceType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 176
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->getCurrentDataConnectionState(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    goto :goto_0

    .line 179
    :cond_2
    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mPsServiceType:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 180
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->getCurrentDataConnectionState(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->getCurrentDataConnectionState(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v1

    if-nez v1, :cond_0

    .line 182
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    goto :goto_0
.end method

.method public registerSetDataAllowed(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 113
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 114
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mDataAllowedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 115
    return-void
.end method

.method public abstract setDataAllowed(ZLandroid/os/Message;)V
.end method

.method public setPsServiceType(I)V
    .locals 2
    .param p1, "psServiceType"    # I

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPsServiceType: psServiceType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPsServiceType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mPsServiceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->log(Ljava/lang/String;)V

    .line 101
    iput p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mPsServiceType:I

    .line 103
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->syncAndNotifyAttachState()V

    .line 104
    return-void
.end method

.method public abstract syncAndNotifyAttachState()V
.end method

.method public unregisterForDataConnectionAttached(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 158
    return-void
.end method

.method public unregisterForDataConnectionDetached(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 193
    return-void
.end method

.method public unregisterSetDataAllowed(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mDataAllowedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 123
    return-void
.end method
