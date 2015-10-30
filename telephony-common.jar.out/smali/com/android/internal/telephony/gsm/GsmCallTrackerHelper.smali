.class public final Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;
.super Ljava/lang/Object;
.source "GsmCallTrackerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$1;,
        Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$GsmCallTrackerReceiver;
    }
.end annotation


# static fields
.field protected static final EVENT_CALL_INFO_INDICATION:I = 0x21

.field protected static final EVENT_CALL_STATE_CHANGE:I = 0x2

.field protected static final EVENT_CALL_WAITING_INFO_CDMA:I = 0xf

.field protected static final EVENT_CDMA_CALL_ACCEPTED:I = 0x1b

.field protected static final EVENT_CDMA_DIAL_THREEWAY_DELAY:I = 0x1c

.field protected static final EVENT_CNAP_INDICATION:I = 0x19

.field protected static final EVENT_CONFERENCE_RESULT:I = 0xb

.field protected static final EVENT_DIAL_CALL_RESULT:I = 0x16

.field protected static final EVENT_ECONF_RESULT_INDICATION:I = 0x1f

.field protected static final EVENT_ECONF_SRVCC_INDICATION:I = 0x1e

.field protected static final EVENT_ECT_RESULT:I = 0xd

.field protected static final EVENT_EXIT_ECM_RESPONSE_CDMA:I = 0xe

.field protected static final EVENT_EXIT_ECM_RESPONSE_DIAL_THREEWAY:I = 0x1d

.field protected static final EVENT_GET_LAST_CALL_FAIL_CAUSE:I = 0x5

.field protected static final EVENT_HANG_UP_RESULT:I = 0x15

.field protected static final EVENT_INCOMING_CALL_INDICATION:I = 0x18

.field protected static final EVENT_OPERATION_COMPLETE:I = 0x4

.field protected static final EVENT_POLL_CALLS_RESULT:I = 0x1

.field protected static final EVENT_RADIO_AVAILABLE:I = 0x9

.field protected static final EVENT_RADIO_NOT_AVAILABLE:I = 0xa

.field protected static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x17

.field protected static final EVENT_REPOLL_AFTER_DELAY:I = 0x3

.field protected static final EVENT_RETRIEVE_HELD_CALL_RESULT:I = 0x20

.field protected static final EVENT_SEPARATE_RESULT:I = 0xc

.field protected static final EVENT_SPEECH_CODEC_INFO:I = 0x1a

.field protected static final EVENT_SWITCH_RESULT:I = 0x8

.field protected static final EVENT_THREE_WAY_DIAL_BLANK_FLASH:I = 0x14

.field protected static final EVENT_THREE_WAY_DIAL_L2_RESULT_CDMA:I = 0x10

.field static final LOG_TAG:Ljava/lang/String; = "GsmCallTracker"


# instance fields
.field private hasPendingHangupRequest:Z

.field public isFullLock:Z

.field public isInLock:Z

.field private mContainForwardingAddress:Z

.field private mContext:Landroid/content/Context;

.field private mDmAgent:Lcom/mediatek/common/dm/DmAgent;

.field private mForwardingAddress:Ljava/lang/String;

.field private mForwardingAddressCallId:I

.field public mIsRejectedByMoms:Z

.field private mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

.field public needHangupMOCall:Z

.field public needHangupMTCall:Z

.field private pendingHangupRequest:I

.field private pendingMTCallId:I

.field private pendingMTSeqNum:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmCallTracker;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tracker"    # Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mIsRejectedByMoms:Z

    .line 109
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->isInLock:Z

    .line 110
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->isFullLock:Z

    .line 111
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->needHangupMOCall:Z

    .line 112
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->needHangupMTCall:Z

    .line 119
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hasPendingHangupRequest:Z

    .line 120
    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingHangupRequest:I

    .line 123
    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTCallId:I

    .line 124
    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTSeqNum:I

    .line 128
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mContainForwardingAddress:Z

    .line 129
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddress:Ljava/lang/String;

    .line 130
    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddressCallId:I

    .line 136
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mContext:Landroid/content/Context;

    .line 137
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .line 140
    const-string v3, "DmAgent"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 141
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/mediatek/common/dm/DmAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/dm/DmAgent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mDmAgent:Lcom/mediatek/common/dm/DmAgent;

    .line 143
    new-instance v3, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$GsmCallTrackerReceiver;

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$GsmCallTrackerReceiver;-><init>(Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$1;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 145
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "com.mediatek.dm.LAWMO_LOCK"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 146
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "com.mediatek.dm.LAWMO_UNLOCK"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v3, "com.mediatek.ppl.NOTIFY_LOCK"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const-string v3, "com.mediatek.ppl.NOTIFY_UNLOCK"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 152
    .local v2, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->DmUpdateStatus()V

    .line 154
    return-void
.end method

.method private DmUpdateStatus()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 293
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mDmAgent:Lcom/mediatek/common/dm/DmAgent;

    if-eqz v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mDmAgent:Lcom/mediatek/common/dm/DmAgent;

    invoke-interface {v1}, Lcom/mediatek/common/dm/DmAgent;->isLockFlagSet()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->isInLock:Z

    .line 295
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mDmAgent:Lcom/mediatek/common/dm/DmAgent;

    invoke-interface {v1}, Lcom/mediatek/common/dm/DmAgent;->getLockType()I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->isFullLock:Z

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isInLock = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->isInLock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isFullLock = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->isFullLock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mDmAgent:Lcom/mediatek/common/dm/DmAgent;

    invoke-interface {v0}, Lcom/mediatek/common/dm/DmAgent;->isHangMoCallLocking()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->needHangupMOCall:Z

    .line 298
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mDmAgent:Lcom/mediatek/common/dm/DmAgent;

    invoke-interface {v0}, Lcom/mediatek/common/dm/DmAgent;->isHangMtCallLocking()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->needHangupMTCall:Z

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "needHangupMOCall = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->needHangupMOCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", needHangupMTCall = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->needHangupMTCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :cond_0
    :goto_1
    return-void

    .line 295
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 301
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->DmUpdateStatus()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;)Lcom/android/internal/telephony/gsm/GsmCallTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    return-object v0
.end method


# virtual methods
.method public CallIndicationEnd()V
    .locals 3

    .prologue
    .line 609
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 610
    .local v0, "pid":I
    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 611
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadPriority(II)V

    .line 612
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current priority = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 614
    :cond_0
    return-void
.end method

.method public CallIndicationGetId()I
    .locals 1

    .prologue
    .line 479
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTCallId:I

    return v0
.end method

.method public CallIndicationGetSeqNo()I
    .locals 1

    .prologue
    .line 483
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTSeqNum:I

    return v0
.end method

.method public CallIndicationProcess(Landroid/os/AsyncResult;)V
    .locals 13
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x5

    const/4 v10, 0x1

    .line 487
    const/4 v5, 0x0

    .line 488
    .local v5, "mode":I
    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/String;

    move-object v4, v7

    check-cast v4, [Ljava/lang/String;

    .line 489
    .local v4, "incomingCallInfo":[Ljava/lang/String;
    aget-object v7, v4, v12

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 490
    .local v0, "callId":I
    const/4 v7, 0x3

    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 491
    .local v1, "callMode":I
    const/4 v7, 0x4

    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 493
    .local v6, "seqNumber":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CallIndicationProcess "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " pendingMTCallId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTCallId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " pendingMTSeqNum "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTSeqNum:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 496
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PROPERTY_TERMINAL_BASED_CALL_WAITING_MODE = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "persist.radio.terminal-based.cw"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",ForgroundCall State="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v8, v8, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",BackgroundCall State="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v8, v8, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 500
    const-string v7, "persist.radio.terminal-based.cw"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "enabled_tbcw_off"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v10, :cond_3

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_1

    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_3

    .line 506
    :cond_1
    const-string v7, "PROPERTY_TERMINAL_BASED_CALL_WAITING_MODE = TERMINAL_BASED_CALL_WAITING_ENABLED_OFF. Reject the call as UDUB "

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 509
    const/4 v5, 0x1

    .line 510
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7, v5, v0, v6, v11}, Lcom/android/internal/telephony/CommandsInterface;->setCallIndication(IIILandroid/os/Message;)V

    .line 576
    :cond_2
    :goto_0
    return-void

    .line 519
    :cond_3
    iput-object v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddress:Ljava/lang/String;

    .line 520
    aget-object v7, v4, v9

    if-eqz v7, :cond_4

    aget-object v7, v4, v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 522
    iput-boolean v12, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mContainForwardingAddress:Z

    .line 523
    aget-object v7, v4, v9

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddress:Ljava/lang/String;

    .line 524
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddressCallId:I

    .line 525
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EAIC message contains forwarding address - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddress:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 530
    :cond_4
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v7, v8, :cond_5

    .line 531
    const/4 v5, 0x1

    .line 537
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->MobileManagermentResetIsBlocking()V

    .line 538
    if-nez v5, :cond_6

    .line 539
    aget-object v7, v4, v10

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v8, v8, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {p0, v7, v1, v8, v9}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->MobileManagermentQueryPermission(Ljava/lang/String;IJ)V

    .line 540
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->MobileManagermentGetIsBlocking()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 541
    const/4 v5, 0x1

    .line 550
    :cond_6
    :goto_1
    if-nez v5, :cond_7

    .line 551
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTCallId:I

    .line 552
    iput v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTSeqNum:I

    .line 553
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallIncomingIndicationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v7}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 554
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notify mVoiceCallIncomingIndicationRegistrants "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTCallId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTSeqNum:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 558
    :cond_7
    if-ne v5, v10, :cond_2

    .line 559
    new-instance v3, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v3}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 560
    .local v3, "dc":Lcom/android/internal/telephony/DriverCall;
    iput-boolean v10, v3, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 561
    iput v0, v3, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 562
    sget-object v7, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    iput-object v7, v3, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 564
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7, v5, v0, v6, v11}, Lcom/android/internal/telephony/CommandsInterface;->setCallIndication(IIILandroid/os/Message;)V

    .line 566
    iput-boolean v10, v3, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 567
    aget-object v7, v4, v10

    iput-object v7, v3, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 568
    iput v10, v3, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 569
    const/4 v7, 0x2

    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 570
    iget-object v7, v3, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v8, v3, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v7, v8}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 572
    new-instance v2, Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-direct {v2, v7, v3, v8, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmCallTracker;I)V

    .line 573
    .local v2, "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v2, v10}, Lcom/android/internal/telephony/gsm/GsmConnection;->onReplaceDisconnect(I)V

    goto/16 :goto_0

    .line 544
    .end local v2    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v3    # "dc":Lcom/android/internal/telephony/DriverCall;
    :cond_8
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public CallIndicationResponse(Z)V
    .locals 7
    .param p1, "accept"    # Z

    .prologue
    const/4 v6, 0x0

    .line 579
    const/4 v0, 0x0

    .line 581
    .local v0, "mode":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setIncomingCallIndicationResponse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pendingMTCallId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTCallId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pendingMTSeqNum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTSeqNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 583
    if-eqz p1, :cond_1

    .line 584
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 586
    .local v1, "pid":I
    const/4 v0, 0x0

    .line 587
    const/16 v2, -0xa

    invoke-static {v1, v2}, Landroid/os/Process;->setThreadPriority(II)V

    .line 588
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adjust the priority of process - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 593
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddress:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 594
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mContainForwardingAddress:Z

    .line 601
    .end local v1    # "pid":I
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTCallId:I

    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTSeqNum:I

    const/4 v5, 0x0

    invoke-interface {v2, v0, v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->setCallIndication(IIILandroid/os/Message;)V

    .line 602
    iput v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTCallId:I

    .line 603
    iput v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTSeqNum:I

    .line 604
    return-void

    .line 599
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public DmCheckIfCallCanComing(Lcom/android/internal/telephony/gsm/GsmConnection;)Z
    .locals 3
    .param p1, "c"    # Lcom/android/internal/telephony/gsm/GsmConnection;

    .prologue
    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInLock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->isInLock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isFullLock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->isFullLock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 308
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->isInLock:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->isFullLock:Z

    if-eqz v1, :cond_0

    .line 309
    const-string v1, "hang up MT call because of in DM lock state"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 311
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :goto_0
    const/4 v1, 0x0

    .line 318
    :goto_1
    return v1

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v1, "GsmCallTracker"

    const-string v2, "unexpected error on hangup"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 318
    .end local v0    # "ex":Lcom/android/internal/telephony/CallStateException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public ForceReleaseAllConnection(Lcom/android/internal/telephony/gsm/GsmCall;)Z
    .locals 5
    .param p1, "call"    # Lcom/android/internal/telephony/gsm/GsmCall;

    .prologue
    .line 376
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->ForceReleaseConnection(Lcom/android/internal/telephony/gsm/GsmCall;Lcom/android/internal/telephony/gsm/GsmCall;)Z

    move-result v1

    .line 377
    .local v1, "forceReleaseFg":Z
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->ForceReleaseConnection(Lcom/android/internal/telephony/gsm/GsmCall;Lcom/android/internal/telephony/gsm/GsmCall;)Z

    move-result v0

    .line 378
    .local v0, "forceReleaseBg":Z
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->ForceReleaseConnection(Lcom/android/internal/telephony/gsm/GsmCall;Lcom/android/internal/telephony/gsm/GsmCall;)Z

    move-result v2

    .line 381
    .local v2, "forceReleaseRing":Z
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    if-eqz v2, :cond_1

    .line 382
    :cond_0
    const-string v3, "GsmCallTracker"

    const-string v4, "hangup(GsmCall)Hang up disconnecting call, return directly"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const/4 v3, 0x1

    .line 386
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public ForceReleaseConnection(Lcom/android/internal/telephony/gsm/GsmCall;Lcom/android/internal/telephony/gsm/GsmCall;)Z
    .locals 5
    .param p1, "call"    # Lcom/android/internal/telephony/gsm/GsmCall;
    .param p2, "hangupCall"    # Lcom/android/internal/telephony/gsm/GsmCall;

    .prologue
    .line 362
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_1

    .line 363
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 364
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 365
    .local v0, "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v3, v0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIndex:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->forceReleaseCall(ILandroid/os/Message;)V

    .line 363
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 368
    .end local v0    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_0
    if-ne p1, p2, :cond_1

    .line 369
    const/4 v2, 0x1

    .line 372
    .end local v1    # "i":I
    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public ForceReleaseNotRingingConnection(Lcom/android/internal/telephony/gsm/GsmCall;)Z
    .locals 5
    .param p1, "call"    # Lcom/android/internal/telephony/gsm/GsmCall;

    .prologue
    const/4 v4, 0x1

    .line 390
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->ForceReleaseConnection(Lcom/android/internal/telephony/gsm/GsmCall;Lcom/android/internal/telephony/gsm/GsmCall;)Z

    move-result v1

    .line 391
    .local v1, "forceReleaseFg":Z
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->ForceReleaseConnection(Lcom/android/internal/telephony/gsm/GsmCall;Lcom/android/internal/telephony/gsm/GsmCall;)Z

    move-result v0

    .line 394
    .local v0, "forceReleaseBg":Z
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 395
    :cond_0
    const-string v2, "GsmCallTracker"

    const-string v3, "hangup(GsmCall)Hang up disconnecting call, return directly"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_1
    return v4
.end method

.method LogState()V
    .locals 7

    .prologue
    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, "callId":I
    const/4 v1, 0x0

    .line 241
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    const/4 v3, 0x7

    .local v3, "s":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 242
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v4, v4, v2

    if-eqz v4, :cond_0

    .line 243
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/android/internal/telephony/gsm/GsmConnection;->mIndex:I

    add-int/lit8 v0, v4, 0x1

    .line 244
    add-int/lit8 v1, v1, 0x1

    .line 245
    const-string v4, "GsmCallTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "* conn id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " existed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 248
    :cond_1
    const-string v4, "GsmCallTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "* GsmCT has "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " connection"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return-void
.end method

.method public LogerMessage(I)V
    .locals 1
    .param p1, "msgType"    # I

    .prologue
    .line 162
    packed-switch p1, :pswitch_data_0

    .line 230
    :pswitch_0
    const-string v0, "handle XXXXX"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 234
    :goto_0
    return-void

    .line 164
    :pswitch_1
    const-string v0, "handle EVENT_POLL_CALLS_RESULT"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :pswitch_2
    const-string v0, "handle EVENT_CALL_STATE_CHANGE"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :pswitch_3
    const-string v0, "handle EVENT_REPOLL_AFTER_DELAY"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :pswitch_4
    const-string v0, "handle EVENT_OPERATION_COMPLETE"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :pswitch_5
    const-string v0, "handle EVENT_GET_LAST_CALL_FAIL_CAUSE"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :pswitch_6
    const-string v0, "handle EVENT_SWITCH_RESULT"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :pswitch_7
    const-string v0, "handle EVENT_RADIO_AVAILABLE"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :pswitch_8
    const-string v0, "handle EVENT_RADIO_NOT_AVAILABLE"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :pswitch_9
    const-string v0, "handle EVENT_CONFERENCE_RESULT"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :pswitch_a
    const-string v0, "handle EVENT_SEPARATE_RESULT"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :pswitch_b
    const-string v0, "handle EVENT_ECT_RESULT"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :pswitch_c
    const-string v0, "handle EVENT_HANG_UP_RESULT"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :pswitch_d
    const-string v0, "handle EVENT_DIAL_CALL_RESULT"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :pswitch_e
    const-string v0, "handle EVENT_INCOMING_CALL_INDICATION"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :pswitch_f
    const-string v0, "handle EVENT_RADIO_OFF_OR_NOT_AVAILABLE"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :pswitch_10
    const-string v0, "handle EVENT_CNAP_INDICATION"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_e
        :pswitch_10
    .end packed-switch
.end method

.method public MobileManagermentGetIsBlocking()Z
    .locals 1

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mIsRejectedByMoms:Z

    return v0
.end method

.method public MobileManagermentQueryPermission(Ljava/lang/String;IJ)V
    .locals 7
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "CallMode"    # I
    .param p3, "subId"    # J

    .prologue
    const/4 v4, 0x0

    .line 255
    invoke-static {}, Lcom/mediatek/common/mom/MobileManagerUtils;->isSupported()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 257
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    if-nez v3, :cond_0

    .line 258
    const-string v3, "mobile"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/mom/IMobileManagerService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    .line 261
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInterceptionEnabledSetting = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v4}, Lcom/mediatek/common/mom/IMobileManagerService;->getInterceptionEnabledSetting()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 262
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v3}, Lcom/mediatek/common/mom/IMobileManagerService;->getInterceptionEnabledSetting()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 263
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 264
    .local v1, "parameter":Landroid/os/Bundle;
    const-string v3, "phoneNumber"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v3, "callType"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 266
    const-string v3, "slotId"

    long-to-int v4, p3

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 267
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v5}, Lcom/mediatek/common/mom/IMobileManagerService;->triggerManagerApListener(ILandroid/os/Bundle;I)I

    move-result v2

    .line 268
    .local v2, "result":I
    if-nez v2, :cond_2

    .line 269
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mIsRejectedByMoms:Z

    .line 279
    .end local v1    # "parameter":Landroid/os/Bundle;
    .end local v2    # "result":I
    :cond_1
    :goto_0
    return-void

    .line 271
    .restart local v1    # "parameter":Landroid/os/Bundle;
    .restart local v2    # "result":I
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mIsRejectedByMoms:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 273
    .end local v1    # "parameter":Landroid/os/Bundle;
    .end local v2    # "result":I
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "MoMS, Suppressing notification faild!"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 277
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mIsRejectedByMoms:Z

    goto :goto_0
.end method

.method public MobileManagermentResetIsBlocking()V
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mIsRejectedByMoms:Z

    .line 283
    return-void
.end method

.method public PendingHangupRequestDec()V
    .locals 1

    .prologue
    .line 461
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hasPendingHangupRequest:Z

    if-eqz v0, :cond_0

    .line 462
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingHangupRequest:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingHangupRequest:I

    .line 463
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingHangupRequest:I

    if-nez v0, :cond_0

    .line 464
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hasPendingHangupRequest:Z

    .line 467
    :cond_0
    return-void
.end method

.method public PendingHangupRequestInc()V
    .locals 1

    .prologue
    .line 456
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hasPendingHangupRequest:Z

    .line 457
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingHangupRequest:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingHangupRequest:I

    .line 458
    return-void
.end method

.method public PendingHangupRequestReset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 470
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hasPendingHangupRequest:Z

    .line 471
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingHangupRequest:I

    .line 472
    return-void
.end method

.method protected PendingHangupRequestUpdate()V
    .locals 2

    .prologue
    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePendingHangupRequest - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-boolean v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHangupPendingMO:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hasPendingHangupRequest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingHangupRequest:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHangupPendingMO:Z

    if-eqz v0, :cond_0

    .line 446
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hasPendingHangupRequest:Z

    if-eqz v0, :cond_0

    .line 447
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingHangupRequest:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingHangupRequest:I

    .line 448
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingHangupRequest:I

    if-nez v0, :cond_0

    .line 449
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hasPendingHangupRequest:Z

    .line 453
    :cond_0
    return-void
.end method

.method public clearForwardingAddressVariables(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 621
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mContainForwardingAddress:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddressCallId:I

    add-int/lit8 v1, p1, 0x1

    if-ne v0, v1, :cond_0

    .line 623
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mContainForwardingAddress:Z

    .line 624
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddress:Ljava/lang/String;

    .line 625
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddressCallId:I

    .line 627
    :cond_0
    return-void
.end method

.method protected getCurrentTotalConnections()I
    .locals 3

    .prologue
    .line 434
    const/4 v0, 0x0

    .line 435
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    const/4 v2, 0x7

    if-ge v1, v2, :cond_1

    .line 436
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 437
    add-int/lit8 v0, v0, 0x1

    .line 435
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 440
    :cond_1
    return v0
.end method

.method public hangupBgConnectionByIndex(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hangupConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)Z

    move-result v0

    return v0
.end method

.method public hangupConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)Z
    .locals 6
    .param p1, "c"    # Lcom/android/internal/telephony/gsm/GsmCall;
    .param p2, "index"    # I

    .prologue
    .line 403
    iget-object v4, p1, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 404
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 405
    iget-object v4, p1, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 407
    .local v0, "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v4

    if-ne v4, p2, :cond_0

    .line 408
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, p2, v5}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    const/4 v4, 0x1

    .line 417
    .end local v0    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :goto_1
    return v4

    .line 411
    .restart local v0    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :catch_0
    move-exception v2

    .line 414
    .local v2, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v4, "GsmCallTracker"

    const-string v5, "GsmCallTracker hangupConnectionByIndex() on absent connection "

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    .end local v2    # "ex":Lcom/android/internal/telephony/CallStateException;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 417
    .end local v0    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public hangupFgConnectionByIndex(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hangupConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)Z

    move-result v0

    return v0
.end method

.method public hangupRingingConnectionByIndex(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hangupConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)Z

    move-result v0

    return v0
.end method

.method public hasPendingHangupRequest()Z
    .locals 1

    .prologue
    .line 475
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hasPendingHangupRequest:Z

    return v0
.end method

.method log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 157
    const-string v0, "GsmCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CC][GsmCT][Helper] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void
.end method

.method public setForwardingAddressToConnection(ILcom/android/internal/telephony/Connection;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "conn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 633
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mContainForwardingAddress:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddressCallId:I

    add-int/lit8 v1, p1, 0x1

    if-ne v0, v1, :cond_0

    .line 636
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddress:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/Connection;->setForwardingAddress(Ljava/lang/String;)V

    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Store forwarding address - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get forwarding address - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getForwardingAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 639
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->clearForwardingAddressVariables(I)V

    .line 641
    :cond_0
    return-void
.end method
