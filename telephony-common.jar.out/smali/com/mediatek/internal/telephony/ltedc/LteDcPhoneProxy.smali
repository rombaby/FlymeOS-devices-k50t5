.class public Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
.super Lcom/android/internal/telephony/PhoneProxy;
.source "LteDcPhoneProxy.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PHONE"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mCsPhone:Lcom/android/internal/telephony/PhoneBase;

.field protected mLtePhone:Lcom/android/internal/telephony/PhoneBase;

.field protected mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

.field protected mPsPhone:Lcom/android/internal/telephony/PhoneBase;

.field protected mRilDcArbitrator:Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

.field protected mSharedDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 3
    .param p1, "ltePhone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "nltePhone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 87
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 88
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    .line 89
    iput-object p2, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    .line 90
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mContext:Landroid/content/Context;

    .line 92
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getDefaultCsPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mCsPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 93
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getDefaultPsPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 94
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mRilDcArbitrator:Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LteDcPhoneProxy: mLtePhone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNLtePhone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->logd(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method private updatePhoneIds(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .param p1, "oldPhone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "newPhone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 371
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    .line 372
    .local v1, "oldPhoneId":I
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 373
    .local v0, "newPhoneId":I
    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->setPhoneId(I)V

    .line 374
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/Phone;->setPhoneId(I)V

    .line 375
    return-void
.end method


# virtual methods
.method public configModemStatus(IIILandroid/os/Message;)V
    .locals 2
    .param p1, "modemStatus"    # I
    .param p2, "remoteSimProtocol"    # I
    .param p3, "type"    # I
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configModemStatus phoneType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " modemStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " remoteSimProtocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->log(Ljava/lang/String;)V

    .line 302
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p4}, Lcom/android/internal/telephony/CommandsInterface;->configModemStatus(IILandroid/os/Message;)V

    .line 311
    :goto_0
    return-void

    .line 305
    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p4}, Lcom/android/internal/telephony/CommandsInterface;->configModemStatus(IILandroid/os/Message;)V

    goto :goto_0

    .line 309
    :cond_1
    const-string v0, "configModemStatus invalid phoneType!"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->dispose()V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->dispose()V

    .line 108
    :cond_1
    return-void
.end method

.method public getCsPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mCsPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    return-object v0
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 379
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->getDataCallList(Landroid/os/Message;)V

    .line 380
    return-void
.end method

.method public getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 424
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataEnabled()Z
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getDataEnabled()Z

    move-result v0

    return v0
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getDataRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method protected getDefaultCsPhone()Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method protected getDefaultPsPhone()Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method public getLastDataConnectionFailCause(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 414
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->getLastDataConnectionFailCause(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v0

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 485
    const-string v0, "IRAT_LteDcPhoneProxy"

    return-object v0
.end method

.method public getLtePhone()Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method public getNLtePhone()Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method public getPhoneById(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 274
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    .line 280
    :goto_0
    return-object v0

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    goto :goto_0

    .line 279
    :cond_1
    const-string v0, "getPhoneById should come here"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->log(Ljava/lang/String;)V

    .line 280
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPsPhone()Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method public getRilDcArbitrator()Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mRilDcArbitrator:Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

    return-object v0
.end method

.method public getSharedDcTracker()Lcom/android/internal/telephony/dataconnection/DcTracker;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mSharedDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    return-object v0
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public isDataConnectivityPossible()Z
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossible(Ljava/lang/String;)Z
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 410
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 445
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getLogTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    return-void
.end method

.method public logd(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 461
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getLogTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    return-void
.end method

.method public loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 477
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getLogTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    return-void
.end method

.method public logv(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 453
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getLogTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    return-void
.end method

.method public logw(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 469
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getLogTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    return-void
.end method

.method public removeReferences()V
    .locals 2

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeReferences: mLtePhone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNLtePhone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->logd(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->removeReferences()V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->removeReferences()V

    .line 120
    :cond_1
    return-void
.end method

.method public setCsPhone(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 0
    .param p1, "csPhone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mCsPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 160
    return-void
.end method

.method public setDataEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 399
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->setDataEnabled(Z)V

    .line 400
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 389
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->setDataRoamingEnabled(Z)V

    .line 390
    return-void
.end method

.method public setLtePhone(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 0
    .param p1, "ltePhone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    .line 184
    return-void
.end method

.method public setNLtePhone(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 0
    .param p1, "nltePhone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    .line 192
    return-void
.end method

.method public setPsPhone(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 0
    .param p1, "psPhone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 152
    return-void
.end method

.method public setRadioPower(ZI)V
    .locals 2
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRadioPower phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " power="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->log(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 266
    :cond_0
    return-void
.end method

.method protected switchActivePhone(Lcom/android/internal/telephony/Phone;)V
    .locals 9
    .param p1, "targetPhone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/16 v6, 0xe

    const/16 v5, 0x8

    const/4 v8, 0x1

    .line 332
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "switchActivePhone targetPhone="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", oldPhone="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->logd(Ljava/lang/String;)V

    .line 334
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    .line 335
    .local v2, "oldPhone":Lcom/android/internal/telephony/Phone;
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    .line 338
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v4

    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    .line 339
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/CallManager;->unregisterPhone(Lcom/android/internal/telephony/Phone;)V

    .line 341
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0, v2, v4}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->updatePhoneIds(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V

    .line 344
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPhoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->setmPhoneSubInfo(Lcom/android/internal/telephony/PhoneSubInfo;)V

    .line 346
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 347
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/uicc/IccCardProxy;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v4, v8, :cond_0

    const/16 v4, 0x10

    :goto_0
    invoke-virtual {v7, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setVoiceRadioTech(I)V

    .line 352
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v4, v8, :cond_1

    move v3, v5

    .line 354
    .local v3, "oldSs":I
    :goto_1
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v4, v8, :cond_2

    move v1, v6

    .line 356
    .local v1, "newSs":I
    :goto_2
    invoke-virtual {p0, v3, v1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->updatePsPhone(II)V

    .line 359
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 361
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v4, 0x20000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 362
    const-string v4, "phoneName"

    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getPhoneId()I

    move-result v4

    invoke-static {v0, v4}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 365
    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-static {v0, v4, v5}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 367
    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "newSs":I
    .end local v3    # "oldSs":I
    :cond_0
    move v4, v5

    .line 347
    goto :goto_0

    :cond_1
    move v3, v6

    .line 352
    goto :goto_1

    .restart local v3    # "oldSs":I
    :cond_2
    move v1, v5

    .line 354
    goto :goto_2
.end method

.method public toggleActivePhone(Z)V
    .locals 3
    .param p1, "lteMode"    # Z

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 320
    .local v0, "activePhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 322
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchActivePhone return without action, lteMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", activePhone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mLtePhone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mNLtePhone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->log(Ljava/lang/String;)V

    .line 329
    :goto_0
    return-void

    .line 327
    :cond_2
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    :goto_1
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->switchActivePhone(Lcom/android/internal/telephony/Phone;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    goto :goto_1
.end method

.method public updatePsPhone(II)V
    .locals 2
    .param p1, "sourceRat"    # I
    .param p2, "targetRat"    # I

    .prologue
    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePsPhone, sourceRat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", targetRat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->log(Ljava/lang/String;)V

    .line 211
    packed-switch p2, :pswitch_data_0

    .line 229
    :pswitch_0
    const-string v0, "updatePsPhone, target rat is unknown, to ltePhone"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->log(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 235
    :goto_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->updatePsPhoneAndCi(Lcom/android/internal/telephony/PhoneBase;)V

    .line 236
    return-void

    .line 213
    :pswitch_1
    const-string v0, "updatePsPhone to ltePhone"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->log(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    goto :goto_0

    .line 224
    :pswitch_2
    const-string v0, "updatePsPhone to nltePhone"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->log(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    goto :goto_0

    .line 211
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public updatePsPhoneAndCi(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 2
    .param p1, "psPhone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePsPhoneAndCi: psPhone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->log(Ljava/lang/String;)V

    .line 244
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 245
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mRilDcArbitrator:Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;->updatePsCi(Lcom/android/internal/telephony/CommandsInterface;)V

    .line 246
    return-void
.end method
