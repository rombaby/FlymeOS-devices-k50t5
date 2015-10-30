.class public Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;
.super Ljava/lang/Object;
.source "ViaPolicyManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ViaPolicyManager"

.field private static final VIA_GPS_PROCESS_CLASS_NAME:Ljava/lang/String; = "com.mediatek.internal.telephony.cdma.ViaGpsProcess"

.field private static final VIA_PLUS_CODE_IMPL_CLASS_NAME:Ljava/lang/String; = "com.mediatek.internal.telephony.cdma.ViaPlusCodeUtils"

.field private static final VIA_SMS_INTERFACES_IMPL_CLASS_NAME:Ljava/lang/String; = "com.mediatek.internal.telephony.cdma.ViaSmsInterfacesAdapter"

.field private static final VIA_UTKSERVICE_IMPL_CLASS_NAME:Ljava/lang/String; = "com.android.internal.telephony.cdma.utk.UtkService"

.field private static final mLock:Ljava/lang/Object;

.field private static sGpsProcessInstance:Lcom/mediatek/internal/telephony/cdma/IGpsProcess;

.field private static sPlusCodeUtilsInstance:Lcom/mediatek/internal/telephony/cdma/IPlusCodeUtils;

.field private static sSmsInterfacesInstance:Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;

.field private static sUtkServiceInstance:Lcom/mediatek/internal/telephony/cdma/IUtkService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGpsProcess(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/internal/telephony/cdma/IGpsProcess;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phone"    # Lcom/android/internal/telephony/cdma/CDMAPhone;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 118
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sGpsProcessInstance:Lcom/mediatek/internal/telephony/cdma/IGpsProcess;

    if-nez v0, :cond_1

    .line 119
    sget-object v1, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 120
    :try_start_0
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sGpsProcessInstance:Lcom/mediatek/internal/telephony/cdma/IGpsProcess;

    if-nez v0, :cond_0

    .line 121
    invoke-static {p0, p1, p2}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->makeGpsProcess(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/internal/telephony/cdma/IGpsProcess;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sGpsProcessInstance:Lcom/mediatek/internal/telephony/cdma/IGpsProcess;

    .line 123
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getGpsProcess sGpsProcessInstance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sGpsProcessInstance:Lcom/mediatek/internal/telephony/cdma/IGpsProcess;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 126
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sGpsProcessInstance:Lcom/mediatek/internal/telephony/cdma/IGpsProcess;

    return-object v0

    .line 123
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getPlusCodeUtils()Lcom/mediatek/internal/telephony/cdma/IPlusCodeUtils;
    .locals 2

    .prologue
    .line 59
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sPlusCodeUtilsInstance:Lcom/mediatek/internal/telephony/cdma/IPlusCodeUtils;

    if-nez v0, :cond_1

    .line 60
    sget-object v1, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 61
    :try_start_0
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sPlusCodeUtilsInstance:Lcom/mediatek/internal/telephony/cdma/IPlusCodeUtils;

    if-nez v0, :cond_0

    .line 62
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->makePlusCodeUtis()Lcom/mediatek/internal/telephony/cdma/IPlusCodeUtils;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sPlusCodeUtilsInstance:Lcom/mediatek/internal/telephony/cdma/IPlusCodeUtils;

    .line 64
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPlusCodeUtils sPlusCodeUtilsInstance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sPlusCodeUtilsInstance:Lcom/mediatek/internal/telephony/cdma/IPlusCodeUtils;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 67
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sPlusCodeUtilsInstance:Lcom/mediatek/internal/telephony/cdma/IPlusCodeUtils;

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getSmsInterfaces()Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;
    .locals 2

    .prologue
    .line 76
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sSmsInterfacesInstance:Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;

    if-nez v0, :cond_1

    .line 77
    sget-object v1, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 78
    :try_start_0
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sSmsInterfacesInstance:Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;

    if-nez v0, :cond_0

    .line 79
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->makeSmsInterfaces()Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sSmsInterfacesInstance:Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;

    .line 81
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPlusCodeUtils sSmsInterfacesInstance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sSmsInterfacesInstance:Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 84
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sSmsInterfacesInstance:Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;

    return-object v0

    .line 81
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getUtkService(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/mediatek/internal/telephony/cdma/IUtkService;
    .locals 2
    .param p0, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ic"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 97
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstance:Lcom/mediatek/internal/telephony/cdma/IUtkService;

    if-nez v0, :cond_1

    .line 98
    sget-object v1, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 99
    :try_start_0
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstance:Lcom/mediatek/internal/telephony/cdma/IUtkService;

    if-nez v0, :cond_0

    .line 100
    invoke-static {p0, p1, p2}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->makeUtkService(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/mediatek/internal/telephony/cdma/IUtkService;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstance:Lcom/mediatek/internal/telephony/cdma/IUtkService;

    .line 102
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPlusCodeUtils sUtkServiceInstance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstance:Lcom/mediatek/internal/telephony/cdma/IUtkService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 105
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstance:Lcom/mediatek/internal/telephony/cdma/IUtkService;

    return-object v0

    .line 102
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 210
    const-string v0, "ViaPolicyManager"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void
.end method

.method private static makeGpsProcess(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/internal/telephony/cdma/IGpsProcess;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phone"    # Lcom/android/internal/telephony/cdma/CDMAPhone;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 186
    :try_start_0
    const-string v3, "com.mediatek.internal.telephony.cdma.ViaGpsProcess"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 187
    .local v2, "gpsProcessClass":Ljava/lang/Class;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lcom/android/internal/telephony/cdma/CDMAPhone;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Lcom/android/internal/telephony/CommandsInterface;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 189
    .local v0, "c":Ljava/lang/reflect/Constructor;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 190
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/cdma/IGpsProcess;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 205
    .end local v0    # "c":Ljava/lang/reflect/Constructor;
    .end local v2    # "gpsProcessClass":Ljava/lang/Class;
    :goto_0
    return-object v3

    .line 191
    :catch_0
    move-exception v1

    .line 192
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    const-string v3, "createGpsProcess ClassNotFoundException, return default DefaultGpsProcess"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 193
    new-instance v3, Lcom/mediatek/internal/telephony/cdma/DefaultGpsProcess;

    invoke-direct {v3, p0, p1, p2}, Lcom/mediatek/internal/telephony/cdma/DefaultGpsProcess;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 194
    .end local v1    # "ex":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 195
    .local v1, "ex":Ljava/lang/IllegalAccessException;
    const-string v3, "createGpsProcess IllegalAccessException, return default DefaultGpsProcess"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 196
    new-instance v3, Lcom/mediatek/internal/telephony/cdma/DefaultGpsProcess;

    invoke-direct {v3, p0, p1, p2}, Lcom/mediatek/internal/telephony/cdma/DefaultGpsProcess;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 197
    .end local v1    # "ex":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 198
    .local v1, "ex":Ljava/lang/InstantiationException;
    const-string v3, "createGpsProcess InstantiationException, return default DefaultGpsProcess"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 199
    new-instance v3, Lcom/mediatek/internal/telephony/cdma/DefaultGpsProcess;

    invoke-direct {v3, p0, p1, p2}, Lcom/mediatek/internal/telephony/cdma/DefaultGpsProcess;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 200
    .end local v1    # "ex":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v1

    .line 201
    .local v1, "ex":Ljava/lang/NoSuchMethodException;
    const-string v3, "createGpsProcess NoSuchMethodException, return default DefaultGpsProcess"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 202
    new-instance v3, Lcom/mediatek/internal/telephony/cdma/DefaultGpsProcess;

    invoke-direct {v3, p0, p1, p2}, Lcom/mediatek/internal/telephony/cdma/DefaultGpsProcess;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 203
    .end local v1    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v1

    .line 204
    .local v1, "ex":Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "createGpsProcess InvocationTargetException, return default DefaultGpsProcess"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 205
    new-instance v3, Lcom/mediatek/internal/telephony/cdma/DefaultGpsProcess;

    invoke-direct {v3, p0, p1, p2}, Lcom/mediatek/internal/telephony/cdma/DefaultGpsProcess;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0
.end method

.method private static makePlusCodeUtis()Lcom/mediatek/internal/telephony/cdma/IPlusCodeUtils;
    .locals 3

    .prologue
    .line 131
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.cdma.ViaPlusCodeUtils"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 132
    .local v1, "policyClass":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/cdma/IPlusCodeUtils;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 141
    :goto_0
    return-object v2

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    const-string v2, "makePlusCodeUtis ClassNotFoundException, return default DefaultPlusCodeUtils"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 135
    new-instance v2, Lcom/mediatek/internal/telephony/cdma/DefaultPlusCodeUtils;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/cdma/DefaultPlusCodeUtils;-><init>()V

    goto :goto_0

    .line 136
    .end local v0    # "ex":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 137
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    const-string v2, "makePlusCodeUtis IllegalAccessException, return default DefaultPlusCodeUtils"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 138
    new-instance v2, Lcom/mediatek/internal/telephony/cdma/DefaultPlusCodeUtils;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/cdma/DefaultPlusCodeUtils;-><init>()V

    goto :goto_0

    .line 139
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 140
    .local v0, "ex":Ljava/lang/InstantiationException;
    const-string v2, "makePlusCodeUtis InstantiationException, return default DefaultPlusCodeUtils"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 141
    new-instance v2, Lcom/mediatek/internal/telephony/cdma/DefaultPlusCodeUtils;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/cdma/DefaultPlusCodeUtils;-><init>()V

    goto :goto_0
.end method

.method private static makeSmsInterfaces()Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;
    .locals 3

    .prologue
    .line 147
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.cdma.ViaSmsInterfacesAdapter"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 148
    .local v1, "policyClass":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 157
    :goto_0
    return-object v2

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    const-string v2, "makeSmsInterfaces ClassNotFoundException, return default DefaultSmsInterfaces"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 151
    new-instance v2, Lcom/mediatek/internal/telephony/cdma/DefaultSmsInterfaces;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/cdma/DefaultSmsInterfaces;-><init>()V

    goto :goto_0

    .line 152
    .end local v0    # "ex":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 153
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    const-string v2, "makeSmsInterfaces IllegalAccessException, return default DefaultSmsInterfaces"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 154
    new-instance v2, Lcom/mediatek/internal/telephony/cdma/DefaultSmsInterfaces;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/cdma/DefaultSmsInterfaces;-><init>()V

    goto :goto_0

    .line 155
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 156
    .local v0, "ex":Ljava/lang/InstantiationException;
    const-string v2, "makeSmsInterfaces InstantiationException, return default DefaultSmsInterfaces"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 157
    new-instance v2, Lcom/mediatek/internal/telephony/cdma/DefaultSmsInterfaces;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/cdma/DefaultSmsInterfaces;-><init>()V

    goto :goto_0
.end method

.method private static makeUtkService(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/mediatek/internal/telephony/cdma/IUtkService;
    .locals 7
    .param p0, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ic"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 164
    :try_start_0
    const-string v3, "com.android.internal.telephony.cdma.utk.UtkService"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 165
    .local v2, "policyClass":Ljava/lang/Class;
    const-string v3, "getInstance"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lcom/android/internal/telephony/CommandsInterface;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Lcom/android/internal/telephony/uicc/UiccCard;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 167
    .local v1, "mUtkMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/cdma/IUtkService;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 179
    .end local v1    # "mUtkMethod":Ljava/lang/reflect/Method;
    .end local v2    # "policyClass":Ljava/lang/Class;
    :goto_0
    return-object v3

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    const-string v3, "makeUtkService ClassNotFoundException, return default DefaultUtkService"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 170
    new-instance v3, Lcom/mediatek/internal/telephony/cdma/DefaultUtkService;

    invoke-direct {v3}, Lcom/mediatek/internal/telephony/cdma/DefaultUtkService;-><init>()V

    goto :goto_0

    .line 171
    .end local v0    # "ex":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 172
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    const-string v3, "makeUtkService IllegalAccessException, return default DefaultUtkService"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 173
    new-instance v3, Lcom/mediatek/internal/telephony/cdma/DefaultUtkService;

    invoke-direct {v3}, Lcom/mediatek/internal/telephony/cdma/DefaultUtkService;-><init>()V

    goto :goto_0

    .line 174
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 175
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    const-string v3, "makeUtkService NoSuchMethodException, return default DefaultUtkService"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 176
    new-instance v3, Lcom/mediatek/internal/telephony/cdma/DefaultUtkService;

    invoke-direct {v3}, Lcom/mediatek/internal/telephony/cdma/DefaultUtkService;-><init>()V

    goto :goto_0

    .line 177
    .end local v0    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v0

    .line 178
    .local v0, "ex":Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "makeUtkService InvocationTargetException, return default DefaultUtkService"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 179
    new-instance v3, Lcom/mediatek/internal/telephony/cdma/DefaultUtkService;

    invoke-direct {v3}, Lcom/mediatek/internal/telephony/cdma/DefaultUtkService;-><init>()V

    goto :goto_0
.end method
