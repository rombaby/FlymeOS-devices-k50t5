.class public Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;
.super Ljava/lang/Object;
.source "AutoSetBrightnessTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask$AdjustListData;
    }
.end annotation


# static fields
.field static final INVALID_LIST_DATA:I = -0x1


# instance fields
.field private isTimeTaskIsRunning:Z

.field private mAdjustList:Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask$AdjustListData;

.field private final mContext:Landroid/content/Context;

.field private mIntervalTimeMS:I

.field private final mLock:Ljava/lang/Object;

.field private mManager:Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;

.field private mStep:I

.field private mSupportLcdMaxContrast:Z

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v1, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->mSupportLcdMaxContrast:Z

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->mLock:Ljava/lang/Object;

    .line 31
    iput-object p2, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->mManager:Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;

    .line 32
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->mTimer:Ljava/util/Timer;

    .line 33
    iput-object p1, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->mContext:Landroid/content/Context;

    .line 34
    iput-boolean v1, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->isTimeTaskIsRunning:Z

    .line 35
    new-instance v0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask$AdjustListData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask$AdjustListData;-><init>(Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask$1;)V

    iput-object v0, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->mAdjustList:Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask$AdjustListData;

    .line 36
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;

    .prologue
    .line 16
    iget v0, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->mStep:I

    return v0
.end method

.method static synthetic access$108(Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;

    .prologue
    .line 16
    iget v0, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->mStep:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->mStep:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;)Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask$AdjustListData;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->mAdjustList:Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask$AdjustListData;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;
    .param p1, "x1"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->updateBrightness(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->mSupportLcdMaxContrast:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->setMaxContrast()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;
    .param p1, "x1"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->isTimeTaskIsRunning:Z

    return p1
.end method

.method private cancelOldTimeTask()V
    .locals 2

    .prologue
    .line 147
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->mTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->mTimerTask:Ljava/util/TimerTask;

    .line 152
    :cond_0
    monitor-exit v1

    .line 153
    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private cancelTimer()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->mTimer:Ljava/util/Timer;

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->isTimeTaskIsRunning:Z

    .line 144
    :cond_0
    return-void
.end method

.method private dynamicalAdjuest(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 119
    const/16 v0, 0x64

    .line 120
    .local v0, "interval":I
    const/16 v1, 0x1e

    if-ge p1, v1, :cond_1

    .line 121
    const/16 v0, 0xa

    .line 128
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->updateBrightness(I)V

    .line 129
    invoke-direct {p0, v0, v0}, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->scheduleTimerTask(II)V

    .line 130
    return-void

    .line 122
    :cond_1
    const/16 v1, 0x3c

    if-ge p1, v1, :cond_2

    .line 123
    const/16 v0, 0x14

    goto :goto_0

    .line 124
    :cond_2
    const/16 v1, 0x50

    if-ge p1, v1, :cond_0

    .line 125
    const/16 v0, 0x32

    goto :goto_0
.end method

.method private getTimerTask()Ljava/util/TimerTask;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask$1;-><init>(Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;)V

    return-object v0
.end method

.method private scheduleTimerTask(II)V
    .locals 9
    .param p1, "beginInterval"    # I
    .param p2, "aIntervalTime"    # I

    .prologue
    .line 88
    iget-object v8, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 89
    :try_start_0
    iput p2, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->mIntervalTimeMS:I

    .line 90
    const-string v0, "AUTOADJUST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start ---> IntervalTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->mIntervalTimeMS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->mTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->mTimerTask:Ljava/util/TimerTask;

    .line 95
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->getTimerTask()Ljava/util/TimerTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->mTimerTask:Ljava/util/TimerTask;

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->isTimeTaskIsRunning:Z

    .line 97
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->mAdjustList:Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask$AdjustListData;

    invoke-virtual {v0}, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask$AdjustListData;->getListSize()I

    move-result v6

    .line 98
    .local v6, "count":I
    iget-boolean v0, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->mSupportLcdMaxContrast:Z

    if-eqz v0, :cond_1

    if-lez v6, :cond_1

    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->mManager:Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;

    invoke-virtual {v0}, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->getCurrentBrightness()I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_1

    .line 99
    invoke-direct {p0}, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->unlockMaxContrast()V

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->mTimerTask:Ljava/util/TimerTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 103
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->mTimerTask:Ljava/util/TimerTask;

    int-to-long v2, p1

    iget v4, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->mIntervalTimeMS:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    :cond_2
    :goto_0
    :try_start_2
    monitor-exit v8

    .line 109
    return-void

    .line 104
    :catch_0
    move-exception v7

    .line 105
    .local v7, "e":Ljava/lang/IllegalStateException;
    const-string v0, "AUTOADJUST"

    const-string v1, "---error may happen---"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 108
    .end local v6    # "count":I
    .end local v7    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private setMaxContrast()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method private unlockMaxContrast()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method private updateBrightness(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->mManager:Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;

    invoke-virtual {v0, p1}, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->setBrightness(I)V

    .line 113
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->mManager:Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->updateCurrentBrightness(Ljava/lang/Integer;)V

    .line 114
    return-void
.end method


# virtual methods
.method public TerminateAll()V
    .locals 0

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->cancelTimeTask()V

    .line 135
    invoke-direct {p0}, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->cancelTimer()V

    .line 136
    return-void
.end method

.method public cancelTimeTask()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->cancelOldTimeTask()V

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->isTimeTaskIsRunning:Z

    .line 160
    :cond_0
    return-void
.end method

.method public initValueList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez p1, :cond_0

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->cancelOldTimeTask()V

    .line 42
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->mAdjustList:Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask$AdjustListData;

    invoke-virtual {v0, p1}, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask$AdjustListData;->setListData(Ljava/util/List;)V

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "flag":Z
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v1, :cond_0

    .line 165
    iget-boolean v0, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->isTimeTaskIsRunning:Z

    .line 167
    :cond_0
    return v0
.end method

.method public start(I)V
    .locals 1
    .param p1, "aIntervalTime"    # I

    .prologue
    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->mStep:I

    .line 47
    invoke-direct {p0, v0, p1}, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->scheduleTimerTask(II)V

    .line 48
    return-void
.end method
