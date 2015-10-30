.class public Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;
.super Ljava/lang/Object;
.source "SvlteUiccUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils$1;,
        Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils$SingletonHolder;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "SvlteUiccUtils"

.field private static final PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

.field private static final UICCCARD_PROPERTY_RIL_UICC_TYPE:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "gsm.ril.uicctype"

    aput-object v1, v0, v2

    const-string v1, "gsm.ril.uicctype.2"

    aput-object v1, v0, v3

    const-string v1, "gsm.ril.uicctype.3"

    aput-object v1, v0, v4

    const-string v1, "gsm.ril.uicctype.4"

    aput-object v1, v0, v5

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->UICCCARD_PROPERTY_RIL_UICC_TYPE:[Ljava/lang/String;

    .line 44
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "gsm.ril.fulluicctype"

    aput-object v1, v0, v2

    const-string v1, "gsm.ril.fulluicctype.2"

    aput-object v1, v0, v3

    const-string v1, "gsm.ril.fulluicctype.3"

    aput-object v1, v0, v4

    const-string v1, "gsm.ril.fulluicctype.4"

    aput-object v1, v0, v5

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils$1;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;-><init>()V

    return-void
.end method

.method private getFullIccCardType(I)[Ljava/lang/String;
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 189
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getIccCardType(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 181
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->UICCCARD_PROPERTY_RIL_UICC_TYPE:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;
    .locals 2

    .prologue
    .line 60
    const-class v0, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils$SingletonHolder;->INSTANCE:Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 198
    const-string v0, "SvlteUiccUtils"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-void
.end method


# virtual methods
.method public adjustAppType(Lcom/android/internal/telephony/uicc/UiccCard;I)I
    .locals 2
    .param p1, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p2, "appType"    # I

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->logd(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isUsimSim(Lcom/android/internal/telephony/uicc/UiccCard;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x1

    .line 89
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public isNeedToAdjustAppType(I)Z
    .locals 1
    .param p1, "appType"    # I

    .prologue
    .line 70
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRuimCsim(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getIccCardType(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RUIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getIccCardType(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CSIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRuimCsim(Lcom/android/internal/telephony/uicc/UiccCard;)Z
    .locals 3
    .param p1, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    const/4 v0, 0x0

    .line 134
    if-eqz p1, :cond_1

    .line 135
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getIccCardType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RUIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getIccCardType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CSIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 138
    :cond_1
    return v0
.end method

.method public isUsimSim(Lcom/android/internal/telephony/uicc/UiccCard;)Z
    .locals 4
    .param p1, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    const/4 v1, 0x0

    .line 100
    if-eqz p1, :cond_1

    .line 101
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getFullIccCardType()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 103
    .local v0, "fullUiccType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v2, "USIM"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getIccCardType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 106
    .end local v0    # "fullUiccType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_1
    return v1
.end method

.method public isUsimWithCsim(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 149
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getFullIccCardType(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 151
    .local v0, "fullUiccType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v1, "USIM"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CSIM"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUsimWithCsim(Lcom/android/internal/telephony/uicc/UiccCard;)Z
    .locals 3
    .param p1, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    const/4 v1, 0x0

    .line 117
    if-eqz p1, :cond_0

    .line 118
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getFullIccCardType()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 120
    .local v0, "fullUiccType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v2, "USIM"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "CSIM"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 123
    .end local v0    # "fullUiccType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_0
    return v1
.end method
