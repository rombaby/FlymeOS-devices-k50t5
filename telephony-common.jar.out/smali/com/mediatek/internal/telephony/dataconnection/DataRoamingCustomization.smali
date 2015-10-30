.class public Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;
.super Landroid/os/Handler;
.source "DataRoamingCustomization.java"


# static fields
.field private static final APN_AUTO_MODE:I = 0x0

.field private static final APN_ID:Ljava/lang/String; = "apn_id"

.field private static final APN_MANUAL_MODE:I = 0x1

.field private static final APP_FAM_UNKNOWN:I = 0x0

.field private static final CHINA_MCC:Ljava/lang/String; = "460"

.field private static final EVENT_DATA_OR_ROAMING_SETTING_CHANGED:I = 0x1

.field private static final EVENT_SVLTE_SERVICE_STATE_CHANGED:I = 0x2

.field private static final FIRST_ROAMING_KEY:Ljava/lang/String; = "first_roaming"

.field private static final LAST_OPERATOR_NUMERIC_KEY:Ljava/lang/String; = "last_operator_numeric"

.field private static final LAST_REG_STATE_KEY:Ljava/lang/String; = "last_reg_state"

.field private static final OPERATOR_OP09:Ljava/lang/String; = "OP09"

.field private static final PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

.field private static final PREFERENCE_NAME:Ljava/lang/String; = "roaming_customization"

.field private static final PREFER_APN_CTLTE:Ljava/lang/String; = "ctlte"

.field private static final PREFER_APN_CTNET:Ljava/lang/String; = "ctnet"

.field private static final PREFER_APN_UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final TAG:Ljava/lang/String; = "DataRoamingCustomization"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurOpNumeric:Ljava/lang/String;

.field private mCurRegState:I

.field private mObserver:Landroid/database/ContentObserver;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "content://telephony/carriers/preferapn_no_update/subId/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v5, 0x0

    .line 86
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 69
    iput v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mCurRegState:I

    .line 70
    const-string v2, "00000"

    iput-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mCurOpNumeric:Ljava/lang/String;

    .line 72
    new-instance v2, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization$1;-><init>(Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mObserver:Landroid/database/ContentObserver;

    .line 87
    const-string v2, "ro.operator.optr"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "operator":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "OP09"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    const-string v2, "DataRoamingCustomization constructor"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->logd(Ljava/lang/String;)V

    .line 90
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mContext:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 92
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mResolver:Landroid/content/ContentResolver;

    .line 93
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mContext:Landroid/content/Context;

    const-string v3, "roaming_customization"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 95
    .local v1, "roamingPreferences":Landroid/content/SharedPreferences;
    const-string v2, "last_reg_state"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mCurRegState:I

    .line 97
    const-string v2, "last_operator_numeric"

    const-string v3, "00000"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mCurOpNumeric:Ljava/lang/String;

    .line 99
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "mobile_data"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 102
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/PhoneBase;->registerForSvlteServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 105
    .end local v1    # "roamingPreferences":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private checkFirstRoaming()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 141
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mResolver:Landroid/content/ContentResolver;

    const-string v11, "mobile_data"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_1

    move v7, v8

    .line 143
    .local v7, "userDataEnabled":Z
    :goto_0
    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mCurRegState:I

    const/4 v11, 0x5

    if-ne v10, v11, :cond_2

    move v4, v8

    .line 144
    .local v4, "isRoaming":Z
    :goto_1
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mContext:Landroid/content/Context;

    const-string v11, "roaming_customization"

    invoke-virtual {v10, v11, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 145
    .local v5, "roamingPreferences":Landroid/content/SharedPreferences;
    const-string v10, "first_roaming"

    invoke-interface {v5, v10, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 147
    .local v2, "firstRoaming":Z
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v6

    .line 148
    .local v6, "subController":Lcom/android/internal/telephony/SubscriptionController;
    invoke-virtual {v6}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v1

    .line 149
    .local v1, "defaultDataSub":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    .line 150
    .local v0, "defaultDataSlot":I
    if-nez v0, :cond_3

    move v3, v8

    .line 152
    .local v3, "isDefaultDataSim":Z
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkFirstRoaming, userDataEnabled="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ",isRoaming="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ",firstRoaming="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ",defaultDataSub="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ",defaultDataSlot="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->logd(Ljava/lang/String;)V

    .line 155
    if-eqz v7, :cond_0

    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 156
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->popupDialog()V

    .line 157
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->setFirstRoamingFlag(Z)V

    .line 159
    :cond_0
    return-void

    .end local v0    # "defaultDataSlot":I
    .end local v1    # "defaultDataSub":I
    .end local v2    # "firstRoaming":Z
    .end local v3    # "isDefaultDataSim":Z
    .end local v4    # "isRoaming":Z
    .end local v5    # "roamingPreferences":Landroid/content/SharedPreferences;
    .end local v6    # "subController":Lcom/android/internal/telephony/SubscriptionController;
    .end local v7    # "userDataEnabled":Z
    :cond_1
    move v7, v9

    .line 141
    goto :goto_0

    .restart local v7    # "userDataEnabled":Z
    :cond_2
    move v4, v9

    .line 143
    goto :goto_1

    .restart local v0    # "defaultDataSlot":I
    .restart local v1    # "defaultDataSub":I
    .restart local v2    # "firstRoaming":Z
    .restart local v4    # "isRoaming":Z
    .restart local v5    # "roamingPreferences":Landroid/content/SharedPreferences;
    .restart local v6    # "subController":Lcom/android/internal/telephony/SubscriptionController;
    :cond_3
    move v3, v9

    .line 150
    goto :goto_2
.end method

.method private getApnIdByName(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "apnName"    # Ljava/lang/String;
    .param p2, "plmn"    # Ljava/lang/String;

    .prologue
    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getApnIdByName: apnName  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->logd(Ljava/lang/String;)V

    .line 255
    const/4 v6, -0x1

    .line 256
    .local v6, "apnId":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apn = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 257
    .local v3, "selection":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getApnIdByName: selection = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->logd(Ljava/lang/String;)V

    .line 259
    const/4 v7, 0x0

    .line 261
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 264
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 265
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 266
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getApnIdByName: found, the apn id is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    if-eqz v7, :cond_0

    .line 272
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v6

    .line 276
    :goto_0
    return v0

    .line 271
    :cond_1
    if-eqz v7, :cond_2

    .line 272
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 275
    :cond_2
    const-string v0, "getApnIdByName: X not found"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->logd(Ljava/lang/String;)V

    .line 276
    const/4 v0, -0x1

    goto :goto_0

    .line 271
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 272
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private getPreferApnNameByRat(I)Ljava/lang/String;
    .locals 3
    .param p1, "rat"    # I

    .prologue
    .line 227
    invoke-static {p1}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->getUiccFamilyByRat(I)I

    move-result v0

    .line 228
    .local v0, "family":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreferApnNameByRat rat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",family = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->logd(Ljava/lang/String;)V

    .line 229
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 230
    const-string v1, "ctlte"

    .line 234
    :goto_0
    return-object v1

    .line 231
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 232
    const-string v1, "ctnet"

    goto :goto_0

    .line 234
    :cond_1
    const-string v1, "unknown"

    goto :goto_0
.end method

.method private static getUiccFamilyByRat(I)I
    .locals 1
    .param p0, "radioTech"    # I

    .prologue
    .line 239
    if-nez p0, :cond_0

    .line 240
    const/4 v0, 0x0

    .line 248
    :goto_0
    return v0

    .line 243
    :cond_0
    const/4 v0, 0x4

    if-lt p0, v0, :cond_1

    const/16 v0, 0x8

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0xc

    if-ne p0, v0, :cond_3

    .line 246
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 248
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 295
    const-string v0, "DataRoamingCustomization"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return-void
.end method

.method private popupDialog()V
    .locals 4

    .prologue
    .line 192
    const-string v2, "popupDialog for data enabled on roaming network."

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->logd(Ljava/lang/String;)V

    .line 193
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 194
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x80500d7

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 197
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 198
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 200
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 201
    return-void
.end method

.method private saveLastRegInfo(ILjava/lang/String;)V
    .locals 5
    .param p1, "regState"    # I
    .param p2, "operatorNumeric"    # Ljava/lang/String;

    .prologue
    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveLastRegInfo, regState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",operatorNumeric="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->logd(Ljava/lang/String;)V

    .line 171
    iput p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mCurRegState:I

    .line 172
    iput-object p2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mCurOpNumeric:Ljava/lang/String;

    .line 173
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mContext:Landroid/content/Context;

    const-string v3, "roaming_customization"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 174
    .local v1, "roamingPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 175
    .local v0, "roamingEditor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "last_reg_state"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 176
    const-string v2, "last_operator_numeric"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 177
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 178
    return-void
.end method

.method private setFirstRoamingFlag(Z)V
    .locals 5
    .param p1, "roaming"    # Z

    .prologue
    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFirstRoamingFlag, roaming="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->logd(Ljava/lang/String;)V

    .line 163
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mContext:Landroid/content/Context;

    const-string v3, "roaming_customization"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 164
    .local v1, "roamingPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 165
    .local v0, "roamingEditor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "first_roaming"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 166
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 167
    return-void
.end method

.method private setPreferredApn(I)V
    .locals 7
    .param p1, "pos"    # I

    .prologue
    const/4 v6, 0x0

    .line 280
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, "subId":Ljava/lang/String;
    sget-object v4, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    invoke-static {v4, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 282
    .local v2, "uri":Landroid/net/Uri;
    const-string v4, "setPreferredApn: delete"

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->logd(Ljava/lang/String;)V

    .line 283
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 284
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, v2, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 286
    if-ltz p1, :cond_0

    .line 287
    const-string v4, "setPreferredApn: insert"

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->logd(Ljava/lang/String;)V

    .line 288
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 289
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "apn_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 290
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 292
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method private updatePreferedApn()V
    .locals 7

    .prologue
    .line 204
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    const-string v5, "gsm.sim.operator.numeric"

    const-string v6, ""

    invoke-static {v4, v5, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "plmnNumeric":Ljava/lang/String;
    const/4 v0, -0x1

    .line 207
    .local v0, "apnId":I
    const-string v3, "ctnet"

    .line 209
    .local v3, "preferApnName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePreferedApn, plmnNumeric = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->logd(Ljava/lang/String;)V

    .line 211
    if-eqz v2, :cond_1

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 212
    const-string v4, "460"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 214
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    .line 215
    .local v1, "dataRat":I
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->getPreferApnNameByRat(I)Ljava/lang/String;

    move-result-object v3

    .line 216
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePreferedApn, preferApnName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->logd(Ljava/lang/String;)V

    .line 218
    .end local v1    # "dataRat":I
    :cond_0
    invoke-direct {p0, v3, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->getApnIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 220
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePreferedApn, apnId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->logd(Ljava/lang/String;)V

    .line 223
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->setPreferredApn(I)V

    .line 224
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    .line 184
    const-string v1, "ro.operator.optr"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "operator":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "OP09"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 187
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/PhoneBase;->unregisterForSvlteServiceStateChanged(Landroid/os/Handler;)V

    .line 189
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    .line 109
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 111
    :pswitch_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->checkFirstRoaming()V

    goto :goto_0

    .line 114
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 115
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Landroid/telephony/ServiceState;

    .line 116
    .local v3, "serviceState":Landroid/telephony/ServiceState;
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRegState()I

    move-result v2

    .line 117
    .local v2, "regState":I
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "operatorNumeric":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_SVLTE_SERVICE_STATE_CHANGED: regState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",operatorNumeric = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mCurRegState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mCurRegState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mCurOpNumeric = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mCurOpNumeric:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->logd(Ljava/lang/String;)V

    .line 121
    iget v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mCurRegState:I

    if-ne v2, v4, :cond_1

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mCurOpNumeric:Ljava/lang/String;

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mCurOpNumeric:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 124
    :cond_1
    const/4 v4, 0x5

    if-ne v2, v4, :cond_2

    .line 125
    invoke-direct {p0, v2, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->saveLastRegInfo(ILjava/lang/String;)V

    .line 126
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->checkFirstRoaming()V

    .line 127
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->updatePreferedApn()V

    goto :goto_0

    .line 128
    :cond_2
    if-ne v2, v6, :cond_0

    .line 129
    invoke-direct {p0, v2, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->saveLastRegInfo(ILjava/lang/String;)V

    .line 130
    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->setFirstRoamingFlag(Z)V

    .line 131
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->updatePreferedApn()V

    goto :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
