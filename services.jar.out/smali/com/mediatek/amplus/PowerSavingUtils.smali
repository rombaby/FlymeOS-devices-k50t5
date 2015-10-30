.class public Lcom/mediatek/amplus/PowerSavingUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/amplus/PowerSavingUtils$a;,
        Lcom/mediatek/amplus/PowerSavingUtils$b;
    }
.end annotation


# instance fields
.field private b:Z

.field private c:J

.field private d:Z

.field private e:Lcom/mediatek/amplus/PowerSavingUtils$a;

.field private f:Lcom/mediatek/amplus/PowerSavingUtils$b;

.field final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mIsEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean v2, p0, Lcom/mediatek/amplus/PowerSavingUtils;->b:Z

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->c:J

    .line 36
    iput-boolean v2, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mIsEnabled:Z

    .line 37
    iput-boolean v2, p0, Lcom/mediatek/amplus/PowerSavingUtils;->d:Z

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->e:Lcom/mediatek/amplus/PowerSavingUtils$a;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->g:Ljava/util/ArrayList;

    .line 46
    iput-object p1, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mContext:Landroid/content/Context;

    .line 47
    invoke-direct {p0}, Lcom/mediatek/amplus/PowerSavingUtils;->init()V

    .line 48
    return-void
.end method

.method private a(ILandroid/app/PendingIntent;J)J
    .locals 3

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Lcom/mediatek/amplus/PowerSavingUtils;->a(ILandroid/app/PendingIntent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const-wide/32 v0, 0x493e0

    add-long/2addr p3, v0

    .line 154
    :cond_0
    return-wide p3
.end method

.method private a(JJJLandroid/app/PendingIntent;I)J
    .locals 7

    .prologue
    .line 162
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-nez v0, :cond_2

    sub-long v0, p3, p1

    .line 165
    :goto_0
    const-wide/16 v2, 0x2710

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 166
    const-wide/16 v0, 0x0

    .line 169
    :cond_0
    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    long-to-double v0, v0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    add-long/2addr v0, p3

    .line 170
    invoke-direct {p0, p8, p7}, Lcom/mediatek/amplus/PowerSavingUtils;->a(ILandroid/app/PendingIntent;)Z

    move-result v2

    if-eqz v2, :cond_1

    cmp-long v2, v0, p3

    if-eqz v2, :cond_1

    sub-long v2, v0, p3

    const-wide/32 v4, 0x493e0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 172
    const-wide/32 v0, 0x493e0

    add-long/2addr v0, p3

    .line 174
    :cond_1
    return-wide v0

    :cond_2
    move-wide v0, p5

    .line 162
    goto :goto_0
.end method

.method static synthetic a(Lcom/mediatek/amplus/PowerSavingUtils;J)J
    .locals 1

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/mediatek/amplus/PowerSavingUtils;->c:J

    return-wide p1
.end method

.method static synthetic a(Lcom/mediatek/amplus/PowerSavingUtils;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 59
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/alarmplus.config"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    :goto_0
    return-void

    .line 64
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 65
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 66
    :goto_1
    if-eqz v0, :cond_1

    .line 67
    iget-object v2, p0, Lcom/mediatek/amplus/PowerSavingUtils;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 70
    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(ILandroid/app/PendingIntent;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 82
    .line 85
    iget-boolean v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mIsEnabled:Z

    if-nez v0, :cond_1

    .line 86
    const-string v0, "AlarmManager"

    const-string v1, "isAlarmNeedAlign : powerSaving off"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    :goto_0
    return v2

    .line 90
    :cond_1
    iget-boolean v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->d:Z

    if-eqz v0, :cond_2

    .line 91
    const-string v0, "AlarmManager"

    const-string v1, "isAlarmNeedAlign : charging"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 95
    :cond_2
    if-eqz p1, :cond_3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 100
    :cond_3
    iget-boolean v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->b:Z

    if-eqz v0, :cond_4

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 102
    iget-wide v4, p0, Lcom/mediatek/amplus/PowerSavingUtils;->c:J

    sub-long/2addr v0, v4

    const-wide/32 v4, 0x493e0

    cmp-long v0, v0, v4

    if-gez v0, :cond_5

    .line 103
    const-string v0, "AlarmManager"

    const-string v1, "isAlarmNeedAlign : screen off time < 5min!Skip"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 107
    :cond_4
    const-string v0, "AlarmManager"

    const-string v1, "isAlarmNeedAlign : screen on, Skip"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    :cond_5
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    .line 112
    if-nez v3, :cond_6

    .line 113
    const-string v0, "AlarmManager"

    const-string v1, "isAlarmNeedAlign : packageName is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    move v1, v2

    .line 117
    :goto_1
    iget-object v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 118
    iget-object v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 119
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAlarmNeedAlign : packageName = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "is in whitelist"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 117
    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 124
    :cond_8
    iget-object v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 126
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 131
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_9

    const-string v0, "com.google"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 132
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAlarmNeedAlign : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " skip!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    const-string v0, "AlarmManager"

    const-string v1, "isAlarmNeedAlign : packageName not fount"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 141
    :cond_9
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/mediatek/amplus/PowerSavingUtils;Z)Z
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/mediatek/amplus/PowerSavingUtils;->b:Z

    return p1
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 212
    .line 213
    iget-object v1, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "background_power_saving_enable"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 215
    if-eqz v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mIsEnabled:Z

    .line 216
    return-void

    .line 215
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/mediatek/amplus/PowerSavingUtils;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/mediatek/amplus/PowerSavingUtils;->b()V

    return-void
.end method

.method static synthetic b(Lcom/mediatek/amplus/PowerSavingUtils;Z)Z
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/mediatek/amplus/PowerSavingUtils;->d:Z

    return p1
.end method

.method private init()V
    .locals 2

    .prologue
    new-instance v0, Lcom/mediatek/common/jpe/a;

    invoke-direct {v0}, Lcom/mediatek/common/jpe/a;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/common/jpe/a;->a()V

    .line 51
    invoke-direct {p0}, Lcom/mediatek/amplus/PowerSavingUtils;->a()V

    .line 52
    new-instance v0, Lcom/mediatek/amplus/PowerSavingUtils$b;

    invoke-direct {v0, p0}, Lcom/mediatek/amplus/PowerSavingUtils$b;-><init>(Lcom/mediatek/amplus/PowerSavingUtils;)V

    iput-object v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->f:Lcom/mediatek/amplus/PowerSavingUtils$b;

    .line 53
    new-instance v0, Lcom/mediatek/amplus/PowerSavingUtils$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/amplus/PowerSavingUtils$a;-><init>(Lcom/mediatek/amplus/PowerSavingUtils;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->e:Lcom/mediatek/amplus/PowerSavingUtils$a;

    .line 54
    return-void
.end method


# virtual methods
.method public getMaxTriggerTime(IJJJLandroid/app/PendingIntent;)J
    .locals 12

    .prologue
    .line 197
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 201
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-nez v2, :cond_0

    .line 202
    move-object/from16 v0, p8

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/mediatek/amplus/PowerSavingUtils;->a(ILandroid/app/PendingIntent;J)J

    move-result-wide v2

    .line 208
    :goto_0
    return-wide v2

    .line 203
    :cond_0
    const-wide/16 v2, -0x1

    cmp-long v2, p4, v2

    if-nez v2, :cond_1

    move-object v3, p0

    move-wide v6, p2

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    move v11, p1

    .line 204
    invoke-direct/range {v3 .. v11}, Lcom/mediatek/amplus/PowerSavingUtils;->a(JJJLandroid/app/PendingIntent;I)J

    move-result-wide v2

    goto :goto_0

    .line 206
    :cond_1
    add-long v2, p2, p4

    goto :goto_0
.end method
