.class public Lcom/android/internal/telephony/cdma/utk/UtkService;
.super Landroid/os/Handler;
.source "UtkService.java"

# interfaces
.implements Lcom/android/internal/telephony/cdma/utk/AppInterface;
.implements Lcom/mediatek/internal/telephony/cdma/IUtkService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/utk/UtkService$2;,
        Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;
    }
.end annotation


# static fields
.field private static final DEV_ID_DISPLAY:I = 0x2

.field private static final DEV_ID_EARPIECE:I = 0x3

.field private static final DEV_ID_KEYPAD:I = 0x1

.field private static final DEV_ID_NETWORK:I = 0x83

.field private static final DEV_ID_TERMINAL:I = 0x82

.field private static final DEV_ID_UICC:I = 0x81

.field public static final ENVELOPE_MENU_SELECTION:I = 0xff

.field static final EVENT_LIST_BROWSER_TERMINATION:I = 0x8

.field static final EVENT_LIST_CALL_CONNECTED:I = 0x1

.field static final EVENT_LIST_CALL_DISCONNECTED:I = 0x2

.field static final EVENT_LIST_CARD_READER_STATUS:I = 0x6

.field static final EVENT_LIST_CHANNEL_STATUS:I = 0xa

.field static final EVENT_LIST_DATA_AVAILABLE:I = 0x9

.field static final EVENT_LIST_IDLE_SCREEN_AVAILABLE:I = 0x5

.field static final EVENT_LIST_LANGUAGE_SELECTION:I = 0x7

.field static final EVENT_LIST_LOCATION_STATUS:I = 0x3

.field static final EVENT_LIST_MT_CALL:I = 0x0

.field static final EVENT_LIST_USER_ACTIVITY:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "UtkService"

.field private static LTE_UTK_DBG:Z = false

.field static final MSG_ID_CALL_SETUP:I = 0x4

.field public static final MSG_ID_CLOSED_CHANNEL:I = 0x17

.field static final MSG_ID_CMD_LOCAL_INFO:I = 0xc

.field static final MSG_ID_EVENT_DOWNLOAD:I = 0x8

.field static final MSG_ID_EVENT_LOCAL_INFO:I = 0xe

.field static final MSG_ID_EVENT_NOTIFY:I = 0x3

.field public static final MSG_ID_GET_CHANNEL_STATUS:I = 0x18

.field static final MSG_ID_ICC_CHANGED:I = 0xb

.field public static final MSG_ID_OPENED_CHANNEL:I = 0x14

.field static final MSG_ID_PROACTIVE_COMMAND:I = 0x2

.field public static final MSG_ID_RECEIVED_DATA:I = 0x16

.field static final MSG_ID_REFRESH:I = 0x5

.field static final MSG_ID_RESPONSE:I = 0x6

.field static final MSG_ID_RIL_MSG_DECODED:I = 0xa

.field static final MSG_ID_RIL_REFRESH_RESULT:I = 0xd

.field static final MSG_ID_RUIM_READY:I = 0x7

.field public static final MSG_ID_SENT_DATA:I = 0x15

.field static final MSG_ID_SESSION_END:I = 0x1

.field public static final MSG_ID_TIMER_MANAGEMENT_TIMEOUT:I = 0x1a

.field public static final MSG_ID_TIMER_TICK:I = 0x19

.field public static final UTK_CARD_TYPE_UIM_AND_USIM:I = 0x2

.field public static final UTK_CARD_TYPE_UIM_ONLY:I = 0x1

.field public static final UTK_CARD_TYPE_UNKNOW:I = 0x0

.field static final UTK_DEFAULT:Ljava/lang/String; = "Defualt Message"

.field public static final UTK_ENV:I = 0x2

.field public static final UTK_NPS_ENV:I = 0x4

.field public static final UTK_NPS_TR:I = 0x2

.field public static final UTK_PS_ENV:I = 0x3

.field public static final UTK_PS_TR:I = 0x1

.field private static final UTK_TIMEUPDATE_PERIOD:I = 0x3e8

.field public static final UTK_TR:I = 0x1

.field private static mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private static mMutliSimType:I

.field private static mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private static sInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

.field private static final sInstanceLock:Ljava/lang/Object;

.field private static sLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

.field private static sLtePhone:Lcom/android/internal/telephony/PhoneBase;

.field public static sLtePhoneProxyId:I

.field private static sRilDcArbitrator:Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;


# instance fields
.field final UTK_TIMER_MAX:I

.field private mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

.field private mCatchLocalInfoCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

.field private mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

.field private mEventList:[B

.field private mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

.field private mLocationStatusString:Ljava/lang/String;

.field private mLteCmdIf:Lcom/android/internal/telephony/CommandsInterface;

.field private mMenuCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

.field private mMsgDecoder:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

.field private mPendingRilMsgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/RilMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mRilMsgDecoding:Z

.field private mServiceReceiver:Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;

.field private mServiceState:I

.field private mSimId:I

.field private mTimerLock:Ljava/lang/Object;

.field private mTimerManagementHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;",
            ">;"
        }
    .end annotation
.end field

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private mUtkTicker:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 199
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceLock:Ljava/lang/Object;

    .line 213
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->LTE_UTK_DBG:Z

    .line 214
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMutliSimType:I

    .line 215
    sput-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .line 217
    sput-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sRilDcArbitrator:Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

    .line 228
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sLtePhoneProxyId:I

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/UiccCardApplication;Lcom/android/internal/telephony/uicc/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/UiccCard;)V
    .locals 8
    .param p1, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p2, "ca"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p3, "ir"    # Lcom/android/internal/telephony/uicc/IccRecords;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p6, "ic"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 296
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 196
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 205
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 206
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMenuCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 208
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCatchLocalInfoCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 210
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMsgDecoder:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    .line 212
    new-instance v1, Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/utk/LocalInfo;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    .line 218
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLteCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 245
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mRilMsgDecoding:Z

    .line 246
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPendingRilMsgList:Ljava/util/ArrayList;

    .line 250
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    .line 251
    const/16 v1, 0x8

    iput v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->UTK_TIMER_MAX:I

    .line 253
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mTimerManagementHash:Ljava/util/HashMap;

    .line 255
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mTimerLock:Ljava/lang/Object;

    .line 256
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUtkTicker:Ljava/util/Timer;

    .line 258
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceReceiver:Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;

    .line 259
    iput v5, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceState:I

    .line 260
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocationStatusString:Ljava/lang/String;

    .line 298
    const-string v1, "UtkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ci"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ca "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ir "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fh "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ic "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    if-nez p6, :cond_1

    .line 302
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Service: Input parameters must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 306
    :cond_1
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 307
    iput-object p4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    .line 308
    sput-object p3, Lcom/android/internal/telephony/cdma/utk/UtkService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 312
    invoke-static {p0, p5}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;)Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMsgDecoder:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    .line 314
    invoke-static {p4, p0}, Lcom/android/internal/telephony/cdma/utk/BipService;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/internal/telephony/cdma/utk/BipService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    .line 315
    new-instance v1, Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;-><init>(Lcom/android/internal/telephony/cdma/utk/UtkService;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceReceiver:Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;

    .line 316
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 317
    .local v0, "intent":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 318
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceReceiver:Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 322
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 323
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v1, :cond_5

    .line 324
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 v2, 0xb

    invoke-virtual {v1, p0, v2, v4}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 325
    const-string v1, "mUiccController != null, register for icc change successly"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    :goto_0
    sput-object p2, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 331
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v2, 0x7

    invoke-virtual {v1, p0, v2, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 333
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v6, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnUtkSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 334
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v5, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnUtkProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 335
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v7, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnUtkEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 338
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 339
    sget v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sLtePhoneProxyId:I

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    sput-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .line 340
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    if-eqz v1, :cond_4

    .line 341
    const-string v1, "UTK LTE: sLteDcPhoneProxy != null "

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getRilDcArbitrator()Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sRilDcArbitrator:Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

    .line 343
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sRilDcArbitrator:Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

    if-eqz v1, :cond_2

    .line 344
    const-string v1, "UTK LTE: sRilDcArbitrator != null "

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sLtePhone:Lcom/android/internal/telephony/PhoneBase;

    .line 347
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sLtePhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v1, :cond_3

    .line 348
    const-string v1, "UTK LTE: sLtePhone != null "

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLteCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 351
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLteCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_4

    .line 352
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLteCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v6, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnUtkSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 353
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLteCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v5, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnUtkProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 354
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLteCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v7, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnUtkEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 360
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->reportUtkServiceIsRunning(Landroid/os/Message;)V

    .line 361
    const-string v1, "UtkService v1.9.0 is running"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    return-void

    .line 327
    :cond_5
    const-string v1, "mUiccController = null, cant register for icc change"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cdma/utk/UtkService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/utk/UtkService;

    .prologue
    .line 190
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceState:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/cdma/utk/UtkService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/utk/UtkService;
    .param p1, "x1"    # I

    .prologue
    .line 190
    iput p1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cdma/utk/UtkService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/utk/UtkService;

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->checkLocationEvent()V

    return-void
.end method

.method static synthetic access$200()Lcom/android/internal/telephony/cdma/utk/UtkService;
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    return-object v0
.end method

.method private addTimerManagement(I[B)V
    .locals 4
    .param p1, "timerId"    # I
    .param p2, "bcdData"    # [B

    .prologue
    .line 1493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addTimerManagement id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1495
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    invoke-direct {v0, v1, p1, p2}, Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;-><init>(Landroid/os/Handler;I[B)V

    .line 1496
    .local v0, "td":Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mTimerManagementHash:Ljava/util/HashMap;

    monitor-enter v2

    .line 1498
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mTimerManagementHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1499
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mTimerManagementHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1500
    monitor-exit v2

    .line 1501
    return-void

    .line 1500
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static bcdToDigit([B)[B
    .locals 6
    .param p0, "bcd"    # [B

    .prologue
    const/4 v4, 0x0

    .line 1518
    if-nez p0, :cond_1

    move-object v0, v4

    .line 1533
    :cond_0
    :goto_0
    return-object v0

    .line 1521
    :cond_1
    array-length v5, p0

    new-array v0, v5, [B

    .line 1523
    .local v0, "digit":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, p0

    if-ge v2, v5, :cond_0

    .line 1524
    aget-byte v5, p0, v2

    and-int/lit8 v5, v5, 0xf

    int-to-byte v3, v5

    .line 1525
    .local v3, "l":B
    const/16 v5, 0x9

    if-le v3, v5, :cond_2

    move-object v0, v4

    .line 1526
    goto :goto_0

    .line 1528
    :cond_2
    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xf0

    shr-int/lit8 v5, v5, 0x4

    int-to-byte v1, v5

    .line 1530
    .local v1, "h":B
    mul-int/lit8 v5, v3, 0xa

    add-int/2addr v5, v1

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    .line 1523
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private checkLocationEvent()V
    .locals 3

    .prologue
    .line 1618
    const-string v1, "checkLocationEvent"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1620
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mEventList:[B

    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 1621
    .local v0, "st":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1622
    const-string v1, "getUtkLocalInfo"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1623
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getUtkLocalInfo(Landroid/os/Message;)V

    .line 1625
    :cond_0
    return-void
.end method

.method public static digitTobcd([B)[B
    .locals 5
    .param p0, "digit"    # [B

    .prologue
    .line 1537
    if-nez p0, :cond_1

    .line 1538
    const/4 v0, 0x0

    .line 1549
    :cond_0
    return-object v0

    .line 1540
    :cond_1
    array-length v4, p0

    new-array v0, v4, [B

    .line 1542
    .local v0, "bcd":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_0

    .line 1543
    aget-byte v4, p0, v2

    rem-int/lit8 v4, v4, 0xa

    int-to-byte v3, v4

    .line 1544
    .local v3, "l":B
    aget-byte v4, p0, v2

    div-int/lit8 v4, v4, 0xa

    int-to-byte v1, v4

    .line 1546
    .local v1, "h":B
    shl-int/lit8 v4, v3, 0x4

    or-int/2addr v4, v1

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 1542
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private eventDownload(III[BZ)V
    .locals 9
    .param p1, "event"    # I
    .param p2, "sourceId"    # I
    .param p3, "destinationId"    # I
    .param p4, "additionalInfo"    # [B
    .param p5, "oneShot"    # Z

    .prologue
    .line 874
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 876
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x9

    if-eq v6, p1, :cond_4

    .line 877
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mEventList:[B

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mEventList:[B

    array-length v6, v6

    if-nez v6, :cond_1

    .line 878
    :cond_0
    const-string v6, "eventDownload mEventList null"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 940
    :goto_0
    return-void

    .line 882
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "eventDownload events="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mEventList:[B

    invoke-static {v7}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " current event="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 885
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mEventList:[B

    array-length v6, v6

    if-ge v3, v6, :cond_2

    .line 886
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mEventList:[B

    aget-byte v6, v6, v3

    if-ne v6, p1, :cond_3

    .line 887
    if-eqz p5, :cond_2

    .line 888
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mEventList:[B

    const/4 v7, 0x0

    aput-byte v7, v6, v3

    .line 894
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mEventList:[B

    array-length v6, v6

    if-ne v3, v6, :cond_4

    .line 895
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "eventDownload not wanted event "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 885
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 901
    .end local v3    # "index":I
    :cond_4
    const/16 v6, 0xd6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 904
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 907
    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 908
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 909
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 912
    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 913
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 914
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 915
    invoke-virtual {v0, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 918
    if-eqz p4, :cond_5

    .line 919
    const/4 v6, 0x0

    array-length v7, p4

    invoke-virtual {v0, p4, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 922
    :cond_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 925
    .local v5, "rawData":[B
    array-length v6, v5

    add-int/lit8 v4, v6, -0x2

    .line 926
    .local v4, "len":I
    const/4 v6, 0x1

    int-to-byte v7, v4

    aput-byte v7, v5, v6

    .line 928
    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 930
    .local v2, "hexString":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sending event envelope hexString:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 932
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 933
    const/4 v6, 0x2

    invoke-direct {p0, v6, p1}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getSvlteUtkCommandType(II)I

    move-result v1

    .line 934
    .local v1, "cmdType":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UTK LTE: event download through lte ril arbitrator, event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cmdType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 936
    sget-object v6, Lcom/android/internal/telephony/cdma/utk/UtkService;->sRilDcArbitrator:Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

    const/4 v7, 0x0

    sget v8, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMutliSimType:I

    invoke-interface {v6, v2, v7, v1, v8}, Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 938
    .end local v1    # "cmdType":I
    :cond_6
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x0

    invoke-interface {v6, v2, v7}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0
.end method

.method public static getInstance()Lcom/android/internal/telephony/cdma/utk/AppInterface;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1015
    invoke-static {v0, v0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/cdma/utk/UtkService;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/cdma/utk/UtkService;
    .locals 9
    .param p0, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ic"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    const/4 v0, 0x0

    .line 953
    const-string v1, "UtkService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " getInstance ic "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    const/4 v2, 0x0

    .line 956
    .local v2, "ca":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const/4 v5, 0x0

    .line 957
    .local v5, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    const/4 v3, 0x0

    .line 959
    .local v3, "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz p2, :cond_1

    .line 964
    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    .line 965
    if-eqz v2, :cond_0

    .line 966
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v5

    .line 967
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    .line 969
    :cond_0
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 970
    sget-boolean v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->LTE_UTK_DBG:Z

    if-eqz v1, :cond_1

    .line 971
    invoke-static {p2}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getMutliSimType(Lcom/android/internal/telephony/uicc/UiccCard;)I

    move-result v1

    sput v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMutliSimType:I

    .line 972
    const-string v1, "UtkService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " mMutliSimType "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v6, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMutliSimType:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    :cond_1
    sget-object v8, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v8

    .line 977
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    if-nez v1, :cond_4

    .line 978
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz v2, :cond_2

    if-eqz v5, :cond_2

    if-nez v3, :cond_3

    .line 981
    :cond_2
    const-string v1, "UtkService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " getInstance ca "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ir "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " fh "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    monitor-exit v8

    .line 1005
    :goto_0
    return-object v0

    .line 985
    :cond_3
    new-instance v7, Landroid/os/HandlerThread;

    const-string v0, "Utk Telephony service"

    invoke-direct {v7, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 986
    .local v7, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 987
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/UtkService;

    move-object v1, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/utk/UtkService;-><init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/UiccCardApplication;Lcom/android/internal/telephony/uicc/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/UiccCard;)V

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    .line 988
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    const-string v1, "new sInstance"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1005
    .end local v7    # "thread":Landroid/os/HandlerThread;
    :goto_1
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    monitor-exit v8

    goto :goto_0

    .line 1006
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 990
    :cond_4
    if-eqz v2, :cond_6

    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eq v0, v2, :cond_6

    .line 991
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_5

    .line 992
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 994
    :cond_5
    sput-object v2, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 995
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    const/4 v4, 0x7

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v4, v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 996
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    const-string v1, "reinitialize with new ca"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 999
    :cond_6
    if-eqz v3, :cond_7

    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eq v0, v3, :cond_7

    .line 1000
    sput-object v3, Lcom/android/internal/telephony/cdma/utk/UtkService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1001
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    const-string v1, "reinitialize with new ir"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1003
    :cond_7
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    const-string v1, "Return current sInstance"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private static getMutliSimType(Lcom/android/internal/telephony/uicc/UiccCard;)I
    .locals 10
    .param p0, "ic"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1687
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 1689
    .local v0, "appType1":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 1691
    .local v1, "appType2":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    const/4 v2, 0x0

    .line 1692
    .local v2, "ca":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const/4 v3, 0x0

    .line 1694
    .local v3, "ca2":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    .line 1695
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v3

    .line 1697
    if-eqz v2, :cond_0

    .line 1698
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    .line 1699
    const-string v7, "UtkService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " appType1 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1701
    :cond_0
    if-eqz v3, :cond_1

    .line 1702
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v1

    .line 1703
    const-string v7, "UtkService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " appType2 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1706
    :cond_1
    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v7, v0, :cond_3

    .line 1719
    :cond_2
    :goto_0
    return v4

    .line 1708
    :cond_3
    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v7, v0, :cond_4

    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v7, v0, :cond_2

    .line 1710
    :cond_4
    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v7, v1, :cond_5

    move v4, v5

    .line 1711
    goto :goto_0

    .line 1712
    :cond_5
    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v5, v1, :cond_6

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v5, v1, :cond_2

    :cond_6
    move v4, v6

    .line 1714
    goto :goto_0
.end method

.method private getRecodeLocalinfo()Lcom/android/internal/telephony/cdma/utk/LocalInfo;
    .locals 7

    .prologue
    .line 1417
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/utk/LocalInfo;-><init>()V

    .line 1419
    .local v0, "lc":Lcom/android/internal/telephony/cdma/utk/LocalInfo;
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->copyFrom(Lcom/android/internal/telephony/cdma/utk/LocalInfo;)V

    .line 1421
    const/16 v4, 0xa

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    .line 1422
    .local v3, "myMap":[I
    iget v1, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    .line 1423
    .local v1, "mcc":I
    iget v2, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    .line 1425
    .local v2, "mnc":I
    const-string v4, "LocalInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mLocalInfo MCC:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " IMSI:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    const/16 v4, 0x3e8

    if-ge v1, v4, :cond_0

    .line 1429
    div-int/lit8 v4, v1, 0x64

    aget v4, v3, v4

    mul-int/lit8 v4, v4, 0x64

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    .line 1430
    rem-int/lit8 v1, v1, 0x64

    .line 1431
    iget v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    div-int/lit8 v5, v1, 0xa

    aget v5, v3, v5

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v4, v5

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    .line 1432
    iget v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    rem-int/lit8 v5, v1, 0xa

    aget v5, v3, v5

    add-int/2addr v4, v5

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    .line 1444
    :goto_0
    const/16 v4, 0x64

    if-ge v2, v4, :cond_1

    .line 1446
    div-int/lit8 v4, v2, 0xa

    aget v4, v3, v4

    mul-int/lit8 v4, v4, 0xa

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    .line 1447
    iget v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    rem-int/lit8 v5, v2, 0xa

    aget v5, v3, v5

    add-int/2addr v4, v5

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    .line 1455
    :goto_1
    return-object v0

    .line 1436
    :cond_0
    div-int/lit16 v4, v1, 0x3e8

    aget v4, v3, v4

    mul-int/lit16 v4, v4, 0x3e8

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    .line 1437
    rem-int/lit16 v1, v1, 0x3e8

    .line 1438
    iget v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    div-int/lit8 v5, v1, 0x64

    aget v5, v3, v5

    mul-int/lit8 v5, v5, 0x64

    add-int/2addr v4, v5

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    .line 1439
    rem-int/lit8 v1, v1, 0x64

    .line 1440
    iget v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    div-int/lit8 v5, v1, 0xa

    aget v5, v3, v5

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v4, v5

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    .line 1441
    iget v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    rem-int/lit8 v5, v1, 0xa

    aget v5, v3, v5

    add-int/2addr v4, v5

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    goto :goto_0

    .line 1449
    :cond_1
    div-int/lit8 v4, v2, 0x64

    aget v4, v3, v4

    mul-int/lit8 v4, v4, 0x64

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    .line 1450
    rem-int/lit8 v2, v2, 0x64

    .line 1451
    iget v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    div-int/lit8 v5, v2, 0xa

    aget v5, v3, v5

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v4, v5

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    .line 1452
    iget v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    rem-int/lit8 v5, v2, 0xa

    aget v5, v3, v5

    add-int/2addr v4, v5

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    goto :goto_1

    .line 1421
    :array_0
    .array-data 4
        0x9
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data
.end method

.method private getSvlteUtkCommandType(II)I
    .locals 4
    .param p1, "res"    # I
    .param p2, "typeOfCmd"    # I

    .prologue
    .line 1775
    const/4 v1, 0x0

    .line 1776
    .local v1, "utkCmdType":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UTK LTE: res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " typeOfCmd = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1778
    const/4 v2, 0x1

    if-ne v2, p1, :cond_0

    .line 1779
    invoke-static {p2}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    move-result-object v0

    .line 1780
    .local v0, "cmdType":Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getUtkTrType(Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;)I

    move-result v1

    .line 1787
    .end local v0    # "cmdType":Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UTK LTE: utkCmdType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1788
    return v1

    .line 1781
    :cond_0
    const/4 v2, 0x2

    if-ne v2, p1, :cond_1

    .line 1782
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getUtkEnvType(I)I

    move-result v1

    goto :goto_0

    .line 1784
    :cond_1
    const-string v2, "UTK LTE: inValid commands type"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getTimerManagement(I)Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;
    .locals 3
    .param p1, "timerId"    # I

    .prologue
    .line 1512
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mTimerManagementHash:Ljava/util/HashMap;

    monitor-enter v1

    .line 1513
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mTimerManagementHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;

    monitor-exit v1

    return-object v0

    .line 1514
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getUtkEnvType(I)I
    .locals 5
    .param p1, "env"    # I

    .prologue
    .line 1751
    const/4 v1, 0x0

    .line 1753
    .local v1, "isPSCmd":Z
    const/4 v3, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    .line 1758
    .local v2, "mPSEnvCmdTable":[I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UTK LTE: env = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1760
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 1761
    aget v3, v2, v0

    if-ne p1, v3, :cond_1

    .line 1762
    const/4 v1, 0x1

    .line 1767
    :cond_0
    const/4 v3, 0x1

    if-ne v3, v1, :cond_2

    .line 1768
    const/4 v3, 0x3

    .line 1770
    :goto_1
    return v3

    .line 1760
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1770
    :cond_2
    const/4 v3, 0x4

    goto :goto_1

    .line 1753
    :array_0
    .array-data 4
        0x9
        0xa
    .end array-data
.end method

.method private getUtkTrType(Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;)I
    .locals 7
    .param p1, "cmdType"    # Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1724
    const/4 v1, 0x0

    .line 1726
    .local v1, "isPSCmd":Z
    const/4 v5, 0x5

    new-array v2, v5, [Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    const/4 v5, 0x0

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    aput-object v6, v2, v5

    sget-object v5, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    aput-object v5, v2, v3

    sget-object v5, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->RECEIVE_DATA:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    aput-object v5, v2, v4

    const/4 v5, 0x3

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    aput-object v6, v2, v5

    const/4 v5, 0x4

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->GET_CHANNEL_STATUS:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    aput-object v6, v2, v5

    .line 1734
    .local v2, "mPsCmdTable":[Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UTK LTE: cmdType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1736
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_0

    .line 1737
    aget-object v5, v2, v0

    if-ne p1, v5, :cond_1

    .line 1738
    const/4 v1, 0x1

    .line 1743
    :cond_0
    if-ne v3, v1, :cond_2

    .line 1746
    :goto_1
    return v3

    .line 1736
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v3, v4

    .line 1746
    goto :goto_1
.end method

.method private handleCmdResponse(Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;)V
    .locals 10
    .param p1, "resMsg"    # Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 1326
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/UtkService;->validateResponse(Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1327
    const-string v0, "handleCmdResponse:validateResponse"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1414
    :goto_0
    return-void

    .line 1330
    :cond_0
    const/4 v5, 0x0

    .line 1331
    .local v5, "resp":Lcom/android/internal/telephony/cdma/utk/ResponseData;
    const/4 v6, 0x0

    .line 1332
    .local v6, "helpRequired":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->getCmdDetails()Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    move-result-object v1

    .line 1333
    .local v1, "cmdDet":Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCmdResponse:resMsg.resCode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->resCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1334
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService$2;->$SwitchMap$com$android$internal$telephony$cdma$utk$ResultCode:[I

    iget-object v2, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->resCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/utk/ResultCode;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1336
    :pswitch_0
    const/4 v6, 0x1

    .line 1348
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCmdResponse cmd = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1350
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService$2;->$SwitchMap$com$android$internal$telephony$cdma$utk$AppInterface$CommandType:[I

    iget v2, v1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    sparse-switch v0, :sswitch_data_0

    .line 1412
    :cond_1
    :goto_1
    :sswitch_0
    iget-object v2, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->resCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 1413
    iput-object v9, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto :goto_0

    .line 1352
    :sswitch_1
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->resCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/cdma/utk/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    if-ne v0, v2, :cond_2

    const/4 v6, 0x1

    .line 1353
    :goto_2
    iget v0, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersMenuSelection:I

    invoke-direct {p0, v0, v6}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendMenuSelection(IZ)V

    goto :goto_0

    :cond_2
    move v6, v3

    .line 1352
    goto :goto_2

    .line 1356
    :sswitch_2
    new-instance v5, Lcom/android/internal/telephony/cdma/utk/SelectItemResponseData;

    .end local v5    # "resp":Lcom/android/internal/telephony/cdma/utk/ResponseData;
    iget v0, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersMenuSelection:I

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cdma/utk/SelectItemResponseData;-><init>(I)V

    .line 1357
    .restart local v5    # "resp":Lcom/android/internal/telephony/cdma/utk/ResponseData;
    goto :goto_1

    .line 1360
    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->geInput()Lcom/android/internal/telephony/cdma/utk/Input;

    move-result-object v7

    .line 1361
    .local v7, "input":Lcom/android/internal/telephony/cdma/utk/Input;
    iget-boolean v0, v7, Lcom/android/internal/telephony/cdma/utk/Input;->yesNo:Z

    if-nez v0, :cond_3

    .line 1364
    if-nez v6, :cond_1

    .line 1365
    new-instance v5, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;

    .end local v5    # "resp":Lcom/android/internal/telephony/cdma/utk/ResponseData;
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersInput:Ljava/lang/String;

    iget-boolean v2, v7, Lcom/android/internal/telephony/cdma/utk/Input;->ucs2:Z

    iget-boolean v4, v7, Lcom/android/internal/telephony/cdma/utk/Input;->packed:Z

    invoke-direct {v5, v0, v2, v4}, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;-><init>(Ljava/lang/String;ZZ)V

    .restart local v5    # "resp":Lcom/android/internal/telephony/cdma/utk/ResponseData;
    goto :goto_1

    .line 1369
    :cond_3
    new-instance v5, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;

    .end local v5    # "resp":Lcom/android/internal/telephony/cdma/utk/ResponseData;
    iget-boolean v0, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersYesNoSelection:Z

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;-><init>(Z)V

    .line 1372
    .restart local v5    # "resp":Lcom/android/internal/telephony/cdma/utk/ResponseData;
    goto :goto_1

    .line 1377
    .end local v7    # "input":Lcom/android/internal/telephony/cdma/utk/Input;
    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    iget-boolean v2, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersConfirm:Z

    invoke-interface {v0, v2, v9}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromUim(ZLandroid/os/Message;)V

    .line 1381
    iput-object v9, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto/16 :goto_0

    .line 1385
    :sswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resCode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->resCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " usersConfirm:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersConfirm:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1388
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    iget-object v2, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->resCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    if-ne v0, v2, :cond_1

    .line 1389
    iget-boolean v0, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersConfirm:Z

    if-eqz v0, :cond_4

    .line 1390
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->getOpenChannelSettings()Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    move-result-object v8

    .line 1392
    .local v8, "p":Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/cdma/utk/BipService;->openChannel(Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;)V

    goto/16 :goto_0

    .line 1395
    .end local v8    # "p":Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ResultCode;->USER_NOT_ACCEPT:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->resCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    goto/16 :goto_1

    .line 1407
    :pswitch_2
    const/4 v5, 0x0

    .line 1408
    goto/16 :goto_1

    .line 1334
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 1350
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_2
        0x7 -> :sswitch_3
        0x8 -> :sswitch_3
        0xd -> :sswitch_4
        0x14 -> :sswitch_5
    .end sparse-switch
.end method

.method private handleEventDownload(Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;)V
    .locals 6
    .param p1, "resMsg"    # Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;

    .prologue
    .line 1460
    iget v1, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->event:I

    iget v2, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->sourceId:I

    iget v3, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->destinationId:I

    iget-object v4, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->additionalInfo:[B

    iget-boolean v5, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->oneShot:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/utk/UtkService;->eventDownload(III[BZ)V

    .line 1462
    return-void
.end method

.method private handleProactiveCommand(Lcom/android/internal/telephony/cdma/utk/CommandParams;)V
    .locals 28
    .param p1, "cmdParams"    # Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .prologue
    .line 509
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cdma/utk/CommandParams;->getCommandType()Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 511
    new-instance v12, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandParams;)V

    .line 513
    .local v12, "cmdMsg":Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleProactiveCommand "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cdma/utk/CommandParams;->getCommandType()Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 515
    sget-object v4, Lcom/android/internal/telephony/cdma/utk/UtkService$2;->$SwitchMap$com$android$internal$telephony$cdma$utk$AppInterface$CommandType:[I

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cdma/utk/CommandParams;->getCommandType()Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 701
    const-string v4, "Unsupported command"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 708
    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    :goto_0
    return-void

    .line 517
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    :pswitch_0
    invoke-virtual {v12}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->getMenu()Lcom/android/internal/telephony/cdma/utk/Menu;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkService;->removeMenu(Lcom/android/internal/telephony/cdma/utk/Menu;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 518
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMenuCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 522
    :goto_1
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 704
    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    :cond_0
    :goto_2
    :pswitch_1
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 705
    new-instance v14, Landroid/content/Intent;

    const-string v4, "android.intent.action.utk.command"

    invoke-direct {v14, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 706
    .local v14, "intent":Landroid/content/Intent;
    const-string v4, "UTK CMD"

    invoke-virtual {v14, v4, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 707
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 520
    .end local v14    # "intent":Landroid/content/Intent;
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    :cond_1
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMenuCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto :goto_1

    .line 528
    :pswitch_2
    invoke-virtual {v12}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cdma/utk/TextMessage;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/internal/telephony/cdma/utk/TextMessage;->responseNeeded:Z

    if-nez v4, :cond_0

    .line 529
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_2

    .line 536
    :pswitch_3
    const-string v4, "UtkService handleProactiveCommand Do refresh"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 537
    const/16 v25, 0x1

    .line 538
    .local v25, "type":I
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v4, v4, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 539
    const/16 v25, 0x1

    .line 548
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    move/from16 v0, v25

    invoke-interface {v4, v0, v5}, Lcom/android/internal/telephony/CommandsInterface;->requestUtkRefresh(ILandroid/os/Message;)V

    .line 551
    new-instance v18, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/telephony/uicc/IccRefreshResponse;-><init>()V

    .line 552
    .local v18, "rsp":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v4, v4, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    move-object/from16 v0, v18

    iput v4, v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    .line 553
    sget-object v4, Lcom/android/internal/telephony/cdma/utk/UtkService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/16 v5, 0x1f

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    .line 554
    .local v16, "m":Landroid/os/Message;
    const/4 v4, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 555
    invoke-virtual/range {v16 .. v16}, Landroid/os/Message;->sendToTarget()V

    .line 557
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->value()I

    move-result v5

    iput v5, v4, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    goto/16 :goto_2

    .line 540
    .end local v16    # "m":Landroid/os/Message;
    .end local v18    # "rsp":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    :cond_3
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v4, v4, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    .line 541
    const/16 v25, 0x2

    goto :goto_3

    .line 542
    :cond_4
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v4, v4, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    .line 543
    const/16 v25, 0x3

    goto :goto_3

    .line 544
    :cond_5
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v4, v4, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    if-eqz v4, :cond_6

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v4, v4, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 546
    :cond_6
    const/16 v25, 0x4

    goto :goto_3

    .line 564
    .end local v25    # "type":I
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto/16 :goto_2

    .line 580
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto/16 :goto_0

    .line 586
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v4, v4, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    if-eqz v4, :cond_7

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v4, v4, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_8

    .line 588
    :cond_7
    const-string v4, "Local information get AT data"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 589
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getUtkLocalInfo(Landroid/os/Message;)V

    .line 590
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 591
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCatchLocalInfoCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto/16 :goto_0

    .line 593
    :cond_8
    const-string v4, "handleCmdResponse Local info"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 594
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v4, v4, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-direct {v9, v4, v0}, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;-><init>(ILcom/android/internal/telephony/cdma/utk/LocalInfo;)V

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 596
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v4, p1

    .line 602
    check-cast v4, Lcom/android/internal/telephony/cdma/utk/pollIntervalParams;

    iget v0, v4, Lcom/android/internal/telephony/cdma/utk/pollIntervalParams;->timeUnit:I

    move/from16 v22, v0

    .local v22, "timeUnit":I
    move-object/from16 v4, p1

    .line 603
    check-cast v4, Lcom/android/internal/telephony/cdma/utk/pollIntervalParams;

    iget v0, v4, Lcom/android/internal/telephony/cdma/utk/pollIntervalParams;->timeInterval:I

    move/from16 v21, v0

    .line 604
    .local v21, "timeInterval":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " timeUnit="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " timeInterval="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 606
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Lcom/android/internal/telephony/cdma/utk/PollIntervalResponseData;

    move/from16 v0, v22

    move/from16 v1, v21

    invoke-direct {v9, v0, v1}, Lcom/android/internal/telephony/cdma/utk/PollIntervalResponseData;-><init>(II)V

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 608
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto/16 :goto_0

    .end local v21    # "timeInterval":I
    .end local v22    # "timeUnit":I
    :pswitch_8
    move-object/from16 v4, p1

    .line 611
    check-cast v4, Lcom/android/internal/telephony/cdma/utk/TimerManagementParams;

    iget v0, v4, Lcom/android/internal/telephony/cdma/utk/TimerManagementParams;->timerId:I

    move/from16 v24, v0

    .local v24, "timerId":I
    move-object/from16 v4, p1

    .line 612
    check-cast v4, Lcom/android/internal/telephony/cdma/utk/TimerManagementParams;

    iget v0, v4, Lcom/android/internal/telephony/cdma/utk/TimerManagementParams;->timerAction:I

    move/from16 v23, v0

    .local v23, "timerAction":I
    move-object/from16 v4, p1

    .line 613
    check-cast v4, Lcom/android/internal/telephony/cdma/utk/TimerManagementParams;

    iget-object v10, v4, Lcom/android/internal/telephony/cdma/utk/TimerManagementParams;->dataRaw:[B

    .line 615
    .local v10, "bcdData":[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " timerId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " timerAction="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bcdData="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v10}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 618
    if-nez v23, :cond_a

    .line 619
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->startUtkTimer()V

    .line 620
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1, v10}, Lcom/android/internal/telephony/cdma/utk/UtkService;->addTimerManagement(I[B)V

    .line 622
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Lcom/android/internal/telephony/cdma/utk/TimerManagementResponseData;

    move/from16 v0, v24

    invoke-direct {v9, v0}, Lcom/android/internal/telephony/cdma/utk/TimerManagementResponseData;-><init>(I)V

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 649
    :cond_9
    :goto_4
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto/16 :goto_0

    .line 624
    :cond_a
    const/4 v4, 0x1

    move/from16 v0, v23

    if-ne v0, v4, :cond_c

    .line 625
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getTimerManagement(I)Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;

    move-result-object v20

    .line 626
    .local v20, "td":Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;
    if-eqz v20, :cond_b

    .line 627
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Lcom/android/internal/telephony/cdma/utk/TimerManagementResponseData;

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;->getRemaining()J

    move-result-wide v26

    move/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-direct {v9, v0, v1, v2}, Lcom/android/internal/telephony/cdma/utk/TimerManagementResponseData;-><init>(IJ)V

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 629
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkService;->removeTimerManagement(I)V

    goto :goto_4

    .line 631
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " timermanagement "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 633
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CONTRADICTION_WITH_TIMER:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_4

    .line 636
    .end local v20    # "td":Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;
    :cond_c
    const/4 v4, 0x2

    move/from16 v0, v23

    if-ne v0, v4, :cond_9

    .line 637
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getTimerManagement(I)Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;

    move-result-object v20

    .line 639
    .restart local v20    # "td":Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;
    if-eqz v20, :cond_d

    .line 640
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Lcom/android/internal/telephony/cdma/utk/TimerManagementResponseData;

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;->getRemaining()J

    move-result-wide v26

    move/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-direct {v9, v0, v1, v2}, Lcom/android/internal/telephony/cdma/utk/TimerManagementResponseData;-><init>(IJ)V

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto/16 :goto_4

    .line 643
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " timermanagement "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 645
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CONTRADICTION_WITH_TIMER:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto/16 :goto_4

    .end local v10    # "bcdData":[B
    .end local v20    # "td":Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;
    .end local v23    # "timerAction":I
    .end local v24    # "timerId":I
    :pswitch_9
    move-object/from16 v4, p1

    .line 652
    check-cast v4, Lcom/android/internal/telephony/cdma/utk/SetupEventListParams;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/utk/SetupEventListParams;->eventList:[B

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mEventList:[B

    .line 653
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " set mEventList="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mEventList:[B

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 654
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 656
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->checkLocationEvent()V

    .line 657
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v4, p1

    .line 664
    check-cast v4, Lcom/android/internal/telephony/cdma/utk/CloseChannelParams;

    iget v11, v4, Lcom/android/internal/telephony/cdma/utk/CloseChannelParams;->chId:I

    .line 667
    .local v11, "chId":I
    check-cast p1, Lcom/android/internal/telephony/cdma/utk/CloseChannelParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    move-object/from16 v0, p1

    iget-boolean v15, v0, Lcom/android/internal/telephony/cdma/utk/CloseChannelParams;->isListen:Z

    .line 668
    .local v15, "listen":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    invoke-virtual {v4, v11, v15}, Lcom/android/internal/telephony/cdma/utk/BipService;->closeChannel(IZ)V

    goto/16 :goto_2

    .end local v11    # "chId":I
    .end local v15    # "listen":Z
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    :pswitch_b
    move-object/from16 v4, p1

    .line 673
    check-cast v4, Lcom/android/internal/telephony/cdma/utk/ReceiveDataParams;

    iget v11, v4, Lcom/android/internal/telephony/cdma/utk/ReceiveDataParams;->chId:I

    .line 674
    .restart local v11    # "chId":I
    check-cast p1, Lcom/android/internal/telephony/cdma/utk/ReceiveDataParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/cdma/utk/ReceiveDataParams;->reqDataLength:I

    move/from16 v17, v0

    .line 677
    .local v17, "reqDataLength":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    move/from16 v0, v17

    invoke-virtual {v4, v11, v0}, Lcom/android/internal/telephony/cdma/utk/BipService;->receiveData(II)V

    goto/16 :goto_2

    .end local v11    # "chId":I
    .end local v17    # "reqDataLength":I
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    :pswitch_c
    move-object/from16 v4, p1

    .line 682
    check-cast v4, Lcom/android/internal/telephony/cdma/utk/SendDataParams;

    iget v11, v4, Lcom/android/internal/telephony/cdma/utk/SendDataParams;->chId:I

    .restart local v11    # "chId":I
    move-object/from16 v4, p1

    .line 683
    check-cast v4, Lcom/android/internal/telephony/cdma/utk/SendDataParams;

    iget-object v13, v4, Lcom/android/internal/telephony/cdma/utk/SendDataParams;->channelData:[B

    .line 684
    .local v13, "data":[B
    check-cast p1, Lcom/android/internal/telephony/cdma/utk/SendDataParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/utk/SendDataParams;->sendImmediately:Z

    move/from16 v19, v0

    .line 688
    .local v19, "sendImmediately":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    move/from16 v0, v19

    invoke-virtual {v4, v11, v13, v0}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendData(I[BZ)V

    goto/16 :goto_2

    .line 693
    .end local v11    # "chId":I
    .end local v13    # "data":[B
    .end local v19    # "sendImmediately":Z
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    :pswitch_d
    check-cast p1, Lcom/android/internal/telephony/cdma/utk/GetChannelStatusParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/internal/telephony/cdma/utk/GetChannelStatusParams;->chId:I

    .line 695
    .restart local v11    # "chId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/cdma/utk/BipService;->getChannelStatus(I)V

    goto/16 :goto_2

    .line 515
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_1
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private handleRilMsg(Lcom/android/internal/telephony/cdma/utk/RilMessage;)V
    .locals 9
    .param p1, "rilMsg"    # Lcom/android/internal/telephony/cdma/utk/RilMessage;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 442
    if-nez p1, :cond_1

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    const/4 v7, 0x0

    .line 449
    .local v7, "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRilMsg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 451
    iget v1, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mId:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 494
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->handleSessionEnd()V

    goto :goto_0

    .line 453
    :pswitch_2
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mResCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    if-ne v1, v2, :cond_0

    .line 454
    iget-object v7, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mData:Ljava/lang/Object;

    .end local v7    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    check-cast v7, Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 455
    .restart local v7    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    if-eqz v7, :cond_0

    .line 456
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkService;->handleProactiveCommand(Lcom/android/internal/telephony/cdma/utk/CommandParams;)V

    goto :goto_0

    .line 462
    :pswitch_3
    :try_start_0
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mData:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRilMsg cmdParams!=null ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v7, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rilMsg.mResCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mResCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 475
    if-eqz v7, :cond_0

    .line 476
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mResCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    if-ne v1, v2, :cond_3

    .line 477
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkService;->handleProactiveCommand(Lcom/android/internal/telephony/cdma/utk/CommandParams;)V

    goto :goto_0

    .line 463
    :catch_0
    move-exception v8

    .line 465
    .local v8, "e":Ljava/lang/ClassCastException;
    const-string v1, "Fail to parse proactive command"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 467
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-eqz v1, :cond_0

    .line 468
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v2, v1, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_0

    .end local v8    # "e":Ljava/lang/ClassCastException;
    :cond_2
    move v1, v4

    .line 473
    goto :goto_1

    .line 482
    :cond_3
    iget-object v2, v7, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mResCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto/16 :goto_0

    .line 488
    :pswitch_4
    iget-object v7, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mData:Ljava/lang/Object;

    .end local v7    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    check-cast v7, Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 489
    .restart local v7    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    if-eqz v7, :cond_0

    .line 490
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkService;->handleProactiveCommand(Lcom/android/internal/telephony/cdma/utk/CommandParams;)V

    goto/16 :goto_0

    .line 451
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private handleSessionEnd()V
    .locals 2

    .prologue
    .line 733
    const-string v1, "SESSION END"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 735
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->resetCurrentCmd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 736
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMenuCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 738
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.utk.session_end"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 739
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 740
    return-void
.end method

.method private handleUtkTimerTick()V
    .locals 6

    .prologue
    .line 1474
    const-string v2, "handleUtkTimerTick"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1477
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x8

    if-gt v0, v2, :cond_1

    .line 1478
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getTimerManagement(I)Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;

    move-result-object v1

    .line 1479
    .local v1, "td":Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;
    if-eqz v1, :cond_0

    .line 1480
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;->timerTick()V

    .line 1481
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;->getRemaining()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 1482
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;->getTimerId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkService;->removeTimerManagement(I)V

    .line 1477
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1487
    .end local v1    # "td":Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mTimerManagementHash:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 1488
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->stopUtkTimer()V

    .line 1490
    :cond_2
    return-void
.end method

.method private isBusyOnCall()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 1628
    const-string v6, "isBusyOnCall"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1631
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 1633
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    .line 1643
    .local v4, "s":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1645
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1646
    .local v2, "netInfo":Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    .line 1647
    .local v1, "inDataCall":Z
    if-eqz v2, :cond_0

    .line 1648
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 1651
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "inDataCall: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1653
    if-nez v1, :cond_1

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v4, v6, :cond_2

    :cond_1
    const/4 v5, 0x1

    :cond_2
    return v5
.end method

.method private locationStatusEventDownload()V
    .locals 8

    .prologue
    .line 1581
    const-string v0, "locationStatusEventDownload"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1582
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1585
    .local v6, "buf":Ljava/io/ByteArrayOutputStream;
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->LOCATION_STATUS:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1586
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1587
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceState:I

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mServiceState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1592
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceState:I

    if-nez v0, :cond_0

    .line 1594
    const-string v0, "locationStatusEventDownload v2.0 "

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1595
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getRecodeLocalinfo()Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    move-result-object v7

    .line 1596
    .local v7, "lc":Lcom/android/internal/telephony/cdma/utk/LocalInfo;
    iget v0, v7, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    if-eqz v0, :cond_0

    iget v0, v7, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    if-eqz v0, :cond_0

    .line 1597
    const-string v0, "locationStatusEventDownload include localInfo"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1598
    invoke-virtual {v7, v6}, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->localInfoFormat(Ljava/io/ByteArrayOutputStream;)V

    .line 1602
    .end local v7    # "lc":Lcom/android/internal/telephony/cdma/utk/LocalInfo;
    :cond_0
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 1604
    .local v4, "additionalInfo":[B
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocationStatusString:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocationStatusString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 1606
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->isBusyOnCall()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1607
    const-string v0, "phone is busy, event download abort"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1615
    :goto_0
    return-void

    .line 1609
    :cond_2
    const/4 v1, 0x3

    const/16 v2, 0x82

    const/16 v3, 0x81

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/utk/UtkService;->eventDownload(III[BZ)V

    .line 1610
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocationStatusString:Ljava/lang/String;

    goto :goto_0

    .line 1613
    :cond_3
    const-string v0, "the location status already download"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removeMenu(Lcom/android/internal/telephony/cdma/utk/Menu;)Z
    .locals 5
    .param p1, "menu"    # Lcom/android/internal/telephony/cdma/utk/Menu;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1305
    :try_start_0
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/utk/Menu;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_0

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/utk/Menu;->items:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-nez v3, :cond_0

    .line 1312
    :goto_0
    return v1

    .line 1308
    :catch_0
    move-exception v0

    .line 1309
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "Unable to get Menu\'s items size"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_0
    move v1, v2

    .line 1312
    goto :goto_0
.end method

.method private removeTimerManagement(I)V
    .locals 3
    .param p1, "timerId"    # I

    .prologue
    .line 1504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeTimerManagement id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1506
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mTimerManagementHash:Ljava/util/HashMap;

    monitor-enter v1

    .line 1507
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mTimerManagementHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1508
    monitor-exit v1

    .line 1509
    return-void

    .line 1508
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private resetCurrentCmd()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 711
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-nez v2, :cond_0

    .line 724
    :goto_0
    return v1

    .line 715
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v2, v2, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    move-result-object v0

    .line 717
    .local v0, "type":Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;
    sget-object v2, Lcom/android/internal/telephony/cdma/utk/UtkService$2;->$SwitchMap$com$android$internal$telephony$cdma$utk$AppInterface$CommandType:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 722
    :pswitch_0
    const/4 v1, 0x0

    goto :goto_0

    .line 717
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private sendMenuSelection(IZ)V
    .locals 11
    .param p1, "menuId"    # I
    .param p2, "helpRequired"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 823
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 826
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0xd3

    .line 827
    .local v5, "tag":I
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 830
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 833
    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v5

    .line 834
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 835
    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 836
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 837
    const/16 v6, 0x81

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 840
    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v5

    .line 841
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 842
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 843
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 846
    if-eqz p2, :cond_0

    .line 847
    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->HELP_REQUEST:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v5

    .line 848
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 849
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 852
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 855
    .local v4, "rawData":[B
    array-length v6, v4

    add-int/lit8 v3, v6, -0x2

    .line 856
    .local v3, "len":I
    int-to-byte v6, v3

    aput-byte v6, v4, v7

    .line 858
    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 860
    .local v2, "hexString":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sending menu selection envelope: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 861
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 862
    const/16 v6, 0xff

    invoke-direct {p0, v9, v6}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getSvlteUtkCommandType(II)I

    move-result v1

    .line 863
    .local v1, "cmdType":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UTK LTE: sendMenuSelection through lte ril arbitrator, cmdType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 865
    sget-object v6, Lcom/android/internal/telephony/cdma/utk/UtkService;->sRilDcArbitrator:Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

    sget v7, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMutliSimType:I

    invoke-interface {v6, v2, v10, v1, v7}, Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;II)V

    .line 869
    .end local v1    # "cmdType":I
    :goto_0
    return-void

    .line 867
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, v2, v10}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V
    .locals 10
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .param p2, "resultCode"    # Lcom/android/internal/telephony/cdma/utk/ResultCode;
    .param p3, "includeAdditionalInfo"    # Z
    .param p4, "additionalInfo"    # I
    .param p5, "resp"    # Lcom/android/internal/telephony/cdma/utk/ResponseData;

    .prologue
    .line 746
    if-nez p1, :cond_0

    .line 818
    :goto_0
    return-void

    .line 749
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 752
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v6

    .line 753
    .local v6, "tag":I
    iget-boolean v7, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->compRequired:Z

    if-eqz v7, :cond_1

    .line 754
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v7

    or-int/lit16 v6, v7, 0x80

    .line 756
    :cond_1
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 757
    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 758
    iget v7, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandNumber:I

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 759
    iget v7, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 760
    iget v7, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 763
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v6

    .line 764
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 765
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 766
    const/16 v7, 0x82

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 767
    const/16 v7, 0x81

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 770
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->RESULT:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v7

    or-int/lit16 v6, v7, 0x80

    .line 771
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 772
    if-eqz p3, :cond_4

    const/4 v4, 0x2

    .line 773
    .local v4, "length":I
    :goto_1
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 774
    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/utk/ResultCode;->value()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 777
    if-eqz p3, :cond_2

    .line 778
    invoke-virtual {v0, p4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 782
    :cond_2
    if-eqz p5, :cond_3

    .line 784
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->LOCAL_INFO:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->value()I

    move-result v7

    iget v8, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    if-ne v7, v8, :cond_7

    .line 785
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendTerminalResponse : mServiceState = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 786
    iget v7, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceState:I

    if-eqz v7, :cond_5

    .line 787
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->LOCATION_INFORMATION:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 788
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 804
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 805
    .local v5, "rawData":[B
    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 807
    .local v2, "hexString":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TERMINAL RESPONSE: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 810
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 811
    const/4 v7, 0x1

    iget v8, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    invoke-direct {p0, v7, v8}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getSvlteUtkCommandType(II)I

    move-result v1

    .line 812
    .local v1, "cmdType":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UTK LTE: send terminal response through lte ril arbitrator, cmdType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 814
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/UtkService;->sRilDcArbitrator:Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

    const/4 v8, 0x0

    sget v9, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMutliSimType:I

    invoke-interface {v7, v2, v8, v1, v9}, Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;->sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 772
    .end local v1    # "cmdType":I
    .end local v2    # "hexString":Ljava/lang/String;
    .end local v4    # "length":I
    .end local v5    # "rawData":[B
    :cond_4
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 790
    .restart local v4    # "length":I
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getRecodeLocalinfo()Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    move-result-object v3

    .line 791
    .local v3, "lc":Lcom/android/internal/telephony/cdma/utk/LocalInfo;
    iget v7, v3, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    if-nez v7, :cond_6

    iget v7, v3, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    if-nez v7, :cond_6

    .line 792
    const-string v7, "sendTerminalResponse ignore invalid local info value"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 793
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->LOCATION_INFORMATION:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 794
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 796
    :cond_6
    invoke-virtual {p5, v0}, Lcom/android/internal/telephony/cdma/utk/ResponseData;->format(Ljava/io/ByteArrayOutputStream;)V

    goto :goto_2

    .line 800
    .end local v3    # "lc":Lcom/android/internal/telephony/cdma/utk/LocalInfo;
    :cond_7
    invoke-virtual {p5, v0}, Lcom/android/internal/telephony/cdma/utk/ResponseData;->format(Ljava/io/ByteArrayOutputStream;)V

    goto :goto_2

    .line 816
    .restart local v2    # "hexString":Ljava/lang/String;
    .restart local v5    # "rawData":[B
    :cond_8
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v8, 0x0

    invoke-interface {v7, v2, v8}, Lcom/android/internal/telephony/CommandsInterface;->sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0
.end method

.method private startUtkTimer()V
    .locals 7

    .prologue
    .line 1657
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mTimerLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1658
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUtkTicker:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 1659
    const-string v0, " get new mUtkTicker"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1661
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUtkTicker:Ljava/util/Timer;

    .line 1662
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUtkTicker:Ljava/util/Timer;

    new-instance v1, Lcom/android/internal/telephony/cdma/utk/UtkService$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cdma/utk/UtkService$1;-><init>(Lcom/android/internal/telephony/cdma/utk/UtkService;)V

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 1670
    :goto_0
    monitor-exit v6

    .line 1671
    return-void

    .line 1668
    :cond_0
    const-string v0, "mUtkTicker already running"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1670
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private stopUtkTimer()V
    .locals 2

    .prologue
    .line 1674
    const-string v0, "stopUtkTimer"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1676
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mTimerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1677
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUtkTicker:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1678
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUtkTicker:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1679
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUtkTicker:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1680
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUtkTicker:Ljava/util/Timer;

    .line 1682
    :cond_0
    monitor-exit v1

    .line 1683
    return-void

    .line 1682
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateIccStatus()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 410
    const-string v2, "updateIccStatus"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v2, :cond_1

    .line 412
    const-string v2, "mUiccController == null, cant do nothing"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    .line 417
    .local v1, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-nez v1, :cond_2

    .line 418
    const-string v2, "uiccCard == null, cant do nothing"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 421
    :cond_2
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 424
    .local v0, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newUiccApplication "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 426
    sget-object v2, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eq v2, v0, :cond_0

    .line 427
    const-string v2, "mUiccApplication have changed!"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    sget-object v2, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v2, :cond_3

    .line 429
    const-string v2, "mUiccApplication unregisterForReady!"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    sget-object v2, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 431
    sput-object v4, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 433
    :cond_3
    if-eqz v0, :cond_0

    .line 434
    const-string v2, "mUiccApplication registerForReady successly"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    sput-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 436
    sget-object v2, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v3, 0x7

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private validateResponse(Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;)Z
    .locals 2
    .param p1, "resMsg"    # Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-eqz v0, :cond_0

    .line 1298
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->compareTo(Lcom/android/internal/telephony/cdma/utk/CommandDetails;)Z

    move-result v0

    .line 1300
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 368
    const-string v1, "dispose"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.utk.service_dispose"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 371
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 373
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->stopUtkTimer()V

    .line 375
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    if-eqz v1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/BipService;->dispose()V

    .line 379
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnUtkSessionEnd(Landroid/os/Handler;)V

    .line 380
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnUtkProactiveCmd(Landroid/os/Handler;)V

    .line 381
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnUtkEvent(Landroid/os/Handler;)V

    .line 383
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceReceiver:Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 385
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 386
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLteCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnUtkSessionEnd(Landroid/os/Handler;)V

    .line 387
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLteCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnUtkProactiveCmd(Landroid/os/Handler;)V

    .line 388
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLteCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnUtkEvent(Landroid/os/Handler;)V

    .line 392
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v1, :cond_2

    .line 393
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 394
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 396
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_3

    .line 397
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 398
    sput-object v3, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 400
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkService;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 402
    sput-object v3, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    .line 403
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 406
    const-string v0, "Service finalized"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 33
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1020
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ril message arrived : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1278
    :pswitch_0
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized UTK command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 1026
    :pswitch_1
    const-string v2, "ril message arrived "

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1027
    const/16 v22, 0x0

    .line 1028
    .local v22, "data":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 1029
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 1030
    .local v19, "ar":Landroid/os/AsyncResult;
    if-eqz v19, :cond_0

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 1032
    :try_start_0
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    .end local v22    # "data":Ljava/lang/String;
    check-cast v22, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1038
    .end local v19    # "ar":Landroid/os/AsyncResult;
    .restart local v22    # "data":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mRilMsgDecoding:Z

    if-eqz v2, :cond_2

    .line 1039
    const-string v2, "ril message delay..."

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1040
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPendingRilMsgList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/cdma/utk/RilMessage;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, v22

    invoke-direct {v3, v4, v0}, Lcom/android/internal/telephony/cdma/utk/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1280
    .end local v22    # "data":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1033
    .restart local v19    # "ar":Landroid/os/AsyncResult;
    :catch_0
    move-exception v23

    .line 1034
    .local v23, "e":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 1043
    .end local v19    # "ar":Landroid/os/AsyncResult;
    .end local v23    # "e":Ljava/lang/ClassCastException;
    .restart local v22    # "data":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mRilMsgDecoding:Z

    .line 1045
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMsgDecoder:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    new-instance v3, Lcom/android/internal/telephony/cdma/utk/RilMessage;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, v22

    invoke-direct {v3, v4, v0}, Lcom/android/internal/telephony/cdma/utk/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cdma/utk/RilMessage;)V

    goto :goto_0

    .line 1048
    .end local v22    # "data":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mRilMsgDecoding:Z

    if-eqz v2, :cond_3

    .line 1049
    const-string v2, "ril message delay..."

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1050
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPendingRilMsgList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/cdma/utk/RilMessage;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/internal/telephony/cdma/utk/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1053
    :cond_3
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mRilMsgDecoding:Z

    .line 1055
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMsgDecoder:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    new-instance v3, Lcom/android/internal/telephony/cdma/utk/RilMessage;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/internal/telephony/cdma/utk/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cdma/utk/RilMessage;)V

    goto :goto_0

    .line 1058
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->updateIccStatus()V

    goto :goto_0

    .line 1061
    :pswitch_4
    const-string v2, "utk profileDownload"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1062
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const-string v3, ""

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->profileDownload(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 1065
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cdma/utk/RilMessage;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkService;->handleRilMsg(Lcom/android/internal/telephony/cdma/utk/RilMessage;)V

    .line 1067
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPendingRilMsgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 1068
    const-string v2, " decoding pending ril msg"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1070
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPendingRilMsgList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/internal/telephony/cdma/utk/RilMessage;

    .line 1071
    .local v29, "r":Lcom/android/internal/telephony/cdma/utk/RilMessage;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPendingRilMsgList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1073
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMsgDecoder:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cdma/utk/RilMessage;)V

    goto/16 :goto_0

    .line 1075
    .end local v29    # "r":Lcom/android/internal/telephony/cdma/utk/RilMessage;
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mRilMsgDecoding:Z

    goto/16 :goto_0

    .line 1079
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkService;->handleCmdResponse(Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;)V

    goto/16 :goto_0

    .line 1083
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/os/AsyncResult;

    .line 1084
    .local v20, "aresult":Landroid/os/AsyncResult;
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_5

    .line 1085
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object/from16 v25, v2

    check-cast v25, [I

    .line 1086
    .local v25, "info":[I
    move-object/from16 v0, v25

    array-length v2, v0

    const/16 v3, 0x8

    if-ne v2, v3, :cond_6

    .line 1087
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    const/4 v3, 0x0

    aget v3, v25, v3

    iput v3, v2, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->Technology:I

    .line 1088
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    const/4 v3, 0x1

    aget v3, v25, v3

    iput v3, v2, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    .line 1089
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    const/4 v3, 0x2

    aget v3, v25, v3

    iput v3, v2, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    .line 1090
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    const/4 v3, 0x3

    aget v3, v25, v3

    iput v3, v2, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->SID:I

    .line 1091
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    const/4 v3, 0x4

    aget v3, v25, v3

    iput v3, v2, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->NID:I

    .line 1092
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    const/4 v3, 0x5

    aget v3, v25, v3

    iput v3, v2, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->BASE_ID:I

    .line 1093
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    const/4 v3, 0x6

    aget v3, v25, v3

    iput v3, v2, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->BASE_LAT:I

    .line 1094
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    const/4 v3, 0x7

    aget v3, v25, v3

    iput v3, v2, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->BASE_LONG:I

    .line 1100
    .end local v25    # "info":[I
    :cond_5
    :goto_1
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_9

    .line 1101
    sget-object v2, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    const-string v3, "response cmd local info"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1103
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getRecodeLocalinfo()Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    move-result-object v27

    .line 1104
    .local v27, "lc":Lcom/android/internal/telephony/cdma/utk/LocalInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-eqz v2, :cond_7

    sget-object v2, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->LOCAL_INFO:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->value()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v3, v3, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    if-ne v2, v3, :cond_7

    .line 1106
    sget-object v2, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    const-string v3, "response cmd local info: mCurrntCmd != null! "

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v3, v2, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v2, v2, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    move-object/from16 v0, v27

    invoke-direct {v7, v2, v0}, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;-><init>(ILcom/android/internal/telephony/cdma/utk/LocalInfo;)V

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 1118
    :goto_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto/16 :goto_0

    .line 1096
    .end local v27    # "lc":Lcom/android/internal/telephony/cdma/utk/LocalInfo;
    .restart local v25    # "info":[I
    :cond_6
    sget-object v2, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    const-string v3, "MSG_GET_LOCAL_INFO error"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1110
    .end local v25    # "info":[I
    .restart local v27    # "lc":Lcom/android/internal/telephony/cdma/utk/LocalInfo;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCatchLocalInfoCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-eqz v2, :cond_8

    .line 1111
    sget-object v2, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    const-string v3, "response cmd local info: mCurrntCmd == null! "

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1112
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCatchLocalInfoCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v3, v2, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCatchLocalInfoCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v2, v2, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    move-object/from16 v0, v27

    invoke-direct {v7, v2, v0}, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;-><init>(ILcom/android/internal/telephony/cdma/utk/LocalInfo;)V

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_2

    .line 1116
    :cond_8
    sget-object v2, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    const-string v3, "Both mCurrntCmd and mCatchLocalInfoCmd are null"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 1121
    .end local v27    # "lc":Lcom/android/internal/telephony/cdma/utk/LocalInfo;
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->locationStatusEventDownload()V

    goto/16 :goto_0

    .line 1125
    .end local v20    # "aresult":Landroid/os/AsyncResult;
    :pswitch_8
    const-string v2, "MSG_ID_RIL_REFRESH_RESULT  Complete! "

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1126
    new-instance v26, Landroid/content/Intent;

    invoke-direct/range {v26 .. v26}, Landroid/content/Intent;-><init>()V

    .line 1127
    .local v26, "intent":Landroid/content/Intent;
    const-string v2, "com.android.contacts.action.CONTACTS_INIT_RETRY_ACTION"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->REFRESH:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->value()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v3, v3, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    if-ne v2, v3, :cond_1

    .line 1132
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 1133
    const-string v2, "Clear REFRESH mCurrentCmd"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1140
    .end local v26    # "intent":Landroid/content/Intent;
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 1141
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/String;

    .line 1142
    .local v24, "hexString":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sending timeout envelope: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-interface {v2, v0, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1147
    .end local v24    # "hexString":Ljava/lang/String;
    :pswitch_a
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->handleUtkTimerTick()V

    goto/16 :goto_0

    .line 1150
    :pswitch_b
    const-string v2, "handleMessage MSG_ID_EVENT_DOWNLOAD"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1151
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkService;->handleEventDownload(Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;)V

    goto/16 :goto_0

    .line 1155
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-eqz v2, :cond_1

    .line 1159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage MSG_ID_OPENED_CHANNEL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " arg2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1160
    const/4 v7, 0x0

    .line 1161
    .local v7, "rsp":Lcom/android/internal/telephony/cdma/utk/OpenChannelResponseData;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_b

    .line 1162
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;

    .line 1163
    .local v28, "openResult":Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;
    new-instance v7, Lcom/android/internal/telephony/cdma/utk/OpenChannelResponseData;

    .end local v7    # "rsp":Lcom/android/internal/telephony/cdma/utk/OpenChannelResponseData;
    move-object/from16 v0, v28

    invoke-direct {v7, v0}, Lcom/android/internal/telephony/cdma/utk/OpenChannelResponseData;-><init>(Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;)V

    .line 1164
    .restart local v7    # "rsp":Lcom/android/internal/telephony/cdma/utk/OpenChannelResponseData;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_a

    .line 1166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v3, v2, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ResultCode;->PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 1183
    .end local v28    # "openResult":Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;
    :goto_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto/16 :goto_0

    .line 1169
    .restart local v28    # "openResult":Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v3, v2, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_3

    .line 1172
    .end local v28    # "openResult":Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;
    :cond_b
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_c

    .line 1173
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v9, v2, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v10, Lcom/android/internal/telephony/cdma/utk/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_3

    .line 1175
    :cond_c
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_d

    .line 1176
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v9, v2, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v10, Lcom/android/internal/telephony/cdma/utk/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_3

    .line 1179
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v9, v2, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v10, Lcom/android/internal/telephony/cdma/utk/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_3

    .line 1188
    .end local v7    # "rsp":Lcom/android/internal/telephony/cdma/utk/OpenChannelResponseData;
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-eqz v2, :cond_1

    .line 1192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage MSG_ID_SENT_DATA:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " arg2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1193
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_e

    .line 1194
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [I

    move-object/from16 v21, v2

    check-cast v21, [I

    .line 1195
    .local v21, "availableTxSize":[I
    new-instance v7, Lcom/android/internal/telephony/cdma/utk/SendDataResponseData;

    const/4 v2, 0x0

    aget v2, v21, v2

    invoke-direct {v7, v2}, Lcom/android/internal/telephony/cdma/utk/SendDataResponseData;-><init>(I)V

    .line 1196
    .local v7, "rsp":Lcom/android/internal/telephony/cdma/utk/SendDataResponseData;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v3, v2, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 1211
    .end local v7    # "rsp":Lcom/android/internal/telephony/cdma/utk/SendDataResponseData;
    .end local v21    # "availableTxSize":[I
    :goto_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto/16 :goto_0

    .line 1198
    :cond_e
    const/4 v12, 0x0

    .line 1199
    .local v12, "additionInfo":I
    const/4 v11, 0x0

    .line 1201
    .local v11, "withAdd":Z
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_10

    .line 1202
    const/4 v12, 0x5

    .line 1203
    const/4 v11, 0x1

    .line 1208
    :cond_f
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v9, v2, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v10, Lcom/android/internal/telephony/cdma/utk/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v13, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_4

    .line 1204
    :cond_10
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_f

    .line 1205
    const/4 v12, 0x5

    .line 1206
    const/4 v11, 0x1

    goto :goto_5

    .line 1216
    .end local v11    # "withAdd":Z
    .end local v12    # "additionInfo":I
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-eqz v2, :cond_1

    .line 1220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage MSG_ID_RECEIVED_DATA:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " arg2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1222
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_11

    .line 1223
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    move-object/from16 v30, v2

    check-cast v30, [B

    .line 1224
    .local v30, "receivedData":[B
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v31, v0

    .line 1225
    .local v31, "remaining":I
    new-instance v7, Lcom/android/internal/telephony/cdma/utk/ReceiveDataResponseData;

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-direct {v7, v0, v1}, Lcom/android/internal/telephony/cdma/utk/ReceiveDataResponseData;-><init>([BI)V

    .line 1227
    .local v7, "rsp":Lcom/android/internal/telephony/cdma/utk/ReceiveDataResponseData;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v3, v2, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 1239
    .end local v7    # "rsp":Lcom/android/internal/telephony/cdma/utk/ReceiveDataResponseData;
    .end local v30    # "receivedData":[B
    .end local v31    # "remaining":I
    :goto_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto/16 :goto_0

    .line 1228
    :cond_11
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    .line 1229
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    move-object/from16 v30, v2

    check-cast v30, [B

    .line 1230
    .restart local v30    # "receivedData":[B
    const/16 v31, 0x0

    .line 1231
    .restart local v31    # "remaining":I
    new-instance v7, Lcom/android/internal/telephony/cdma/utk/ReceiveDataResponseData;

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-direct {v7, v0, v1}, Lcom/android/internal/telephony/cdma/utk/ReceiveDataResponseData;-><init>([BI)V

    .line 1233
    .restart local v7    # "rsp":Lcom/android/internal/telephony/cdma/utk/ReceiveDataResponseData;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v3, v2, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ResultCode;->PRFRMD_WITH_MISSING_INFO:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_6

    .line 1236
    .end local v7    # "rsp":Lcom/android/internal/telephony/cdma/utk/ReceiveDataResponseData;
    .end local v30    # "receivedData":[B
    .end local v31    # "remaining":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v14, v2, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v15, Lcom/android/internal/telephony/cdma/utk/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v13, p0

    invoke-direct/range {v13 .. v18}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_6

    .line 1243
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-eqz v2, :cond_1

    .line 1247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage MSG_ID_CLOSED_CHANNEL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " arg2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1249
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_13

    .line 1250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v14, v2, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v15, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v13, p0

    invoke-direct/range {v13 .. v18}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 1254
    :goto_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto/16 :goto_0

    .line 1252
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v14, v2, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v15, Lcom/android/internal/telephony/cdma/utk/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v13, p0

    invoke-direct/range {v13 .. v18}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_7

    .line 1258
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-eqz v2, :cond_1

    .line 1262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage MSG_ID_GET_CHANNEL_STATUS:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " arg2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1265
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_14

    .line 1266
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    .line 1267
    .local v32, "s":Lcom/android/internal/telephony/cdma/utk/ChannelStatus;
    new-instance v7, Lcom/android/internal/telephony/cdma/utk/GetChannelStatusResponseData;

    move-object/from16 v0, v32

    invoke-direct {v7, v0}, Lcom/android/internal/telephony/cdma/utk/GetChannelStatusResponseData;-><init>(Lcom/android/internal/telephony/cdma/utk/ChannelStatus;)V

    .line 1268
    .local v7, "rsp":Lcom/android/internal/telephony/cdma/utk/GetChannelStatusResponseData;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v3, v2, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 1272
    .end local v7    # "rsp":Lcom/android/internal/telephony/cdma/utk/GetChannelStatusResponseData;
    .end local v32    # "s":Lcom/android/internal/telephony/cdma/utk/ChannelStatus;
    :goto_8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto/16 :goto_0

    .line 1270
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v14, v2, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v15, Lcom/android/internal/telephony/cdma/utk/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v13, p0

    invoke-direct/range {v13 .. v18}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_8

    .line 1021
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_4
        :pswitch_b
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public isRadioOn()Z
    .locals 3

    .prologue
    .line 1797
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    .line 1798
    .local v0, "mRadioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRadioState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1799
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v0, v1, :cond_0

    .line 1800
    const/4 v1, 0x1

    .line 1802
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized onCmdResponse(Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;)V
    .locals 2
    .param p1, "resMsg"    # Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;

    .prologue
    .line 1288
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1294
    :goto_0
    monitor-exit p0

    return-void

    .line 1292
    :cond_0
    const/4 v1, 0x6

    :try_start_0
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/cdma/utk/UtkService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1293
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1288
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onEventDownload(Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;)V
    .locals 2
    .param p1, "resMsg"    # Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;

    .prologue
    .line 1465
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1471
    :goto_0
    monitor-exit p0

    return-void

    .line 1469
    :cond_0
    const/16 v1, 0x8

    :try_start_0
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/cdma/utk/UtkService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1470
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1465
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
