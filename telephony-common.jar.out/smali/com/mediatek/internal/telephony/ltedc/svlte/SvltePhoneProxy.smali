.class public Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;
.super Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
.source "SvltePhoneProxy.java"


# static fields
.field private static final EVENT_RADIO_AVAILABLE:I = 0x3e8


# instance fields
.field protected mCdmaIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

.field protected mCdmaIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

.field private mIratController:Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;

.field private mIratDataSwitchHelper:Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;

.field protected mLteIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

.field protected mLteIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 3
    .param p1, "gsmPhone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "cdmaPhone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;)V

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CdmaLteDcPhoneProxy: cdmaPhone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gsmPhone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 81
    new-instance v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-direct {v0, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mCdmaIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .line 82
    new-instance v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mLteIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .line 83
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->updateIccSmsInterfaceManager(Lcom/android/internal/telephony/Phone;)V

    .line 85
    new-instance v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;-><init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mCdmaIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    .line 87
    new-instance v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;-><init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mLteIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    .line 89
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->updateIccPhoneBookInterfaceManager(Lcom/android/internal/telephony/Phone;)V

    .line 91
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getDefaultCsPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->setCsPhone(Lcom/android/internal/telephony/PhoneBase;)V

    .line 92
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getDefaultPsPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->setPsPhone(Lcom/android/internal/telephony/PhoneBase;)V

    .line 94
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 97
    invoke-static {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->make(Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    .line 99
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaApIratSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    invoke-static {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->make(Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;)Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    .line 105
    :goto_0
    invoke-static {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->make(Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;

    .line 107
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaIratSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIratController:Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;

    .line 109
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIratDataSwitchHelper:Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CdmaLteDcPhoneProxy: mIratController = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIratController:Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIratDataSwitchHelper = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIratDataSwitchHelper:Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isCdmaIratSupport() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaIratSupport()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isCdmaMdIratSupport() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaMdIratSupport()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->shareLTEServiceStateTracker(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;)V

    .line 118
    return-void

    .line 102
    :cond_1
    invoke-static {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController;->make(Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController;

    goto :goto_0
.end method

.method private createAndShareDcTracker()V
    .locals 2

    .prologue
    .line 137
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mSharedDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createAndShareDcTracker: mSharedDcTracker ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mSharedDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mSharedDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iput-object v1, v0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 140
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mSharedDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iput-object v1, v0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 141
    return-void
.end method

.method private shareLTEServiceStateTracker(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 3
    .param p1, "gsmPhone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "cdmaPhone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shareLTEServiceStateTracker: cdmaPhone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", gsmPhone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    .line 173
    .local v0, "lteServiceStateTracker":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->setSvlteServiceStateTracker(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;)V

    .line 175
    return-void
.end method

.method private updateDefaultPsPhone()V
    .locals 4

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getDefaultPsPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    .line 249
    .local v0, "psPhone":Lcom/android/internal/telephony/PhoneBase;
    const/4 v1, -0x1

    .line 250
    .local v1, "psType":I
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 251
    const/4 v1, 0x1

    .line 255
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->updatePsPhoneAndCi(Lcom/android/internal/telephony/PhoneBase;)V

    .line 256
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIratDataSwitchHelper:Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;

    invoke-virtual {v2, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->setPsServiceType(I)V

    .line 257
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIratController:Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;

    invoke-virtual {v2, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->setInitialPsType(I)V

    .line 258
    return-void

    .line 252
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 253
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateIccPhoneBookInterfaceManager(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "targetPhone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateIccPhoneBookInterfaceManager: targetPhone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 278
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 279
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mCdmaIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 281
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mLteIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    goto :goto_0
.end method

.method private updateIccSmsInterfaceManager(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "targetPhone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateIccSmsInterfaceManager: targetPhone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 269
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 270
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mCdmaIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 272
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mLteIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 179
    invoke-super {p0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->dispose()V

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispose: mSharedDcTracker ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mSharedDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 183
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mSharedDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->dispose()V

    .line 184
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIratDataSwitchHelper:Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->dispose()V

    .line 185
    return-void
.end method

.method protected getDefaultCsPhone()Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method protected getDefaultPsPhone()Lcom/android/internal/telephony/PhoneBase;
    .locals 3

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getRatMode()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v0

    .line 128
    .local v0, "ratMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultPsPhone: ratMode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->isCdmaOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    .line 132
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    goto :goto_0
.end method

.method public getIratController()Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIratController:Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;

    return-object v0
.end method

.method public getIratDataSwitchHelper()Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIratDataSwitchHelper:Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    const-string v0, "SvltePhoneProxy"

    return-object v0
.end method

.method public getRatMode()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .locals 4

    .prologue
    .line 161
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lte_on_cdma_rat_mode"

    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 164
    .local v0, "ratMode":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRatMode ratMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->values()[Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v1

    aget-object v1, v1, v0

    return-object v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 145
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 152
    invoke-super {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->handleMessage(Landroid/os/Message;)V

    .line 154
    :goto_0
    return-void

    .line 147
    :pswitch_0
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->getInstance()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getRatMode()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v1

    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_HOME:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->setSvlteRatMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;Landroid/os/Message;)V

    .line 149
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public initialize()V
    .locals 2

    .prologue
    .line 223
    invoke-static {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteIratUtils;->setSvltePhoneProxy(Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;)V

    .line 226
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->createAndShareDcTracker()V

    .line 227
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIratController:Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mSharedDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->setDcTracker(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    .line 228
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->updateDefaultPsPhone()V

    .line 229
    return-void
.end method

.method protected switchActivePhone(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .param p1, "targetPhone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 262
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->updateIccSmsInterfaceManager(Lcom/android/internal/telephony/Phone;)V

    .line 263
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->updateIccPhoneBookInterfaceManager(Lcom/android/internal/telephony/Phone;)V

    .line 264
    invoke-super {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->switchActivePhone(Lcom/android/internal/telephony/Phone;)V

    .line 265
    return-void
.end method

.method public updatePhoneObject(I)V
    .locals 1
    .param p1, "voiceRadioTech"    # I

    .prologue
    .line 200
    const-string v0, "updatePhoneObject do not need phone update in SVLTE case."

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public updatePsPhoneAndCi(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 4
    .param p1, "psPhone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v3, 0x1

    .line 205
    invoke-super {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->updatePsPhoneAndCi(Lcom/android/internal/telephony/PhoneBase;)V

    .line 206
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIratController:Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;

    iget-object v2, p1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->updatePsCi(Lcom/android/internal/telephony/CommandsInterface;)V

    .line 207
    const/4 v0, -0x1

    .line 208
    .local v0, "psType":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 209
    const/4 v0, 0x1

    .line 210
    const-string v1, "updatePsPhone: setBipPsType =1"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setBipPsType(I)V

    .line 217
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePsPhoneAndCi: psType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIratDataSwitchHelper:Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->setPsServiceType(I)V

    .line 219
    return-void

    .line 212
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 213
    const/4 v0, 0x0

    .line 214
    const-string v1, "updatePsPhone: setBipPsType =0"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 215
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setBipPsType(I)V

    goto :goto_0
.end method
