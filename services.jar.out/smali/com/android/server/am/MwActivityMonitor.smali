.class public Lcom/android/server/am/MwActivityMonitor;
.super Ljava/lang/Object;
.source "MwActivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MwActivityMonitor$MessageObj;
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field static final MSG_MW_MAX_RESTORE:I = 0x3

.field static final NG_DONOT_BLOCK:I = 0x0

.field static final NG_SAME_CALLER_APP:I = -0x1

.field static final NG_SAME_COMPONENT_NAME:I = -0x2

.field static final NG_SAME_TASK:I = -0x3

.field static final OK_BLOCK_ACTIVITY:I = 0x1

.field static final SHOW_MAXIMUM_FRONT_FLOATING_MSG:I = 0x2

.field static final SHOW_ONE_ACTIVITY_AT_GALLERY3D_MSG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MwActivityMonitor"


# instance fields
.field mContext:Landroid/content/Context;

.field private mMaximumFrontFloatingSize:I

.field final mMwHandler:Landroid/os/Handler;

.field mRunningActivity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MwActivityMonitor;->mRunningActivity:Ljava/util/ArrayList;

    .line 88
    new-instance v0, Lcom/android/server/am/MwActivityMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/MwActivityMonitor$1;-><init>(Lcom/android/server/am/MwActivityMonitor;)V

    iput-object v0, p0, Lcom/android/server/am/MwActivityMonitor;->mMwHandler:Landroid/os/Handler;

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/server/am/MwActivityMonitor;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/android/server/am/MwActivityMonitor;->mContext:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/android/server/am/MwActivityMonitor;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 84
    iget-object v0, p0, Lcom/android/server/am/MwActivityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x80b000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/MwActivityMonitor;->mMaximumFrontFloatingSize:I

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/MwActivityMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MwActivityMonitor;

    .prologue
    .line 56
    iget v0, p0, Lcom/android/server/am/MwActivityMonitor;->mMaximumFrontFloatingSize:I

    return v0
.end method


# virtual methods
.method public blockByFloatingStackSize(Lcom/android/server/am/ActivityRecord;)I
    .locals 12
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v9, 0x0

    .line 239
    const/4 v3, 0x1

    .line 243
    .local v3, "blocked":Z
    iget-object v8, p0, Lcom/android/server/am/MwActivityMonitor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->getFrontFloatStacks(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 244
    .local v4, "frontFloatingStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 245
    .local v5, "frontStackSize":I
    iget-object v8, p0, Lcom/android/server/am/MwActivityMonitor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->getBackFloatStacks(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 246
    .local v1, "backFloatingStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 248
    .local v2, "backStackSize":I
    const-string v8, "MwActivityMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "blockByFloatingStackSize floating stack size = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget v8, p0, Lcom/android/server/am/MwActivityMonitor;->mMaximumFrontFloatingSize:I

    if-lt v5, v8, :cond_5

    .line 254
    if-eqz p1, :cond_1

    .line 255
    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getFlags()I

    move-result v8

    and-int/lit16 v8, v8, 0x200

    if-eqz v8, :cond_4

    .line 258
    add-int/lit8 v6, v5, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_0

    .line 259
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v8, p1}, Lcom/android/server/am/ActivityStack;->findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 261
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_2

    .line 262
    const/4 v3, 0x0

    .line 269
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v7, v2, -0x1

    .local v7, "j":I
    :goto_1
    if-ltz v7, :cond_1

    if-eqz v3, :cond_1

    .line 270
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v8, p1}, Lcom/android/server/am/ActivityStack;->findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 272
    .restart local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_3

    .line 273
    const/4 v3, 0x0

    .line 286
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "i":I
    .end local v7    # "j":I
    :cond_1
    :goto_2
    if-eqz v3, :cond_6

    .line 287
    iget-object v8, p0, Lcom/android/server/am/MwActivityMonitor;->mMwHandler:Landroid/os/Handler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 288
    const/4 v8, 0x1

    .line 291
    :goto_3
    return v8

    .line 258
    .restart local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .restart local v6    # "i":I
    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 269
    .restart local v7    # "j":I
    :cond_3
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 279
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "i":I
    .end local v7    # "j":I
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 283
    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    :cond_6
    move v8, v9

    .line 291
    goto :goto_3
.end method

.method public blockByRunningActivity(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Landroid/content/Intent;[Lcom/android/server/am/ActivityRecord;Landroid/content/pm/ActivityInfo;)I
    .locals 12
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "callerApp"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "nextIntent"    # Landroid/content/Intent;
    .param p4, "outRunningAc"    # [Lcom/android/server/am/ActivityRecord;
    .param p5, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 150
    const-string v9, "MwActivityMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "blockByRunningActivity processName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", callerApp = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", nextIntent = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    .line 157
    .local v5, "nextComponentName":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/am/MwActivityMonitor;->mRunningActivity:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 158
    .local v1, "N":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_7

    .line 159
    iget-object v9, p0, Lcom/android/server/am/MwActivityMonitor;->mRunningActivity:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    .line 160
    .local v7, "runningAc":Lcom/android/server/am/ActivityRecord;
    const/4 v9, 0x0

    aput-object v7, p4, v9

    .line 162
    iget-object v9, v7, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getFlags()I

    move-result v8

    .line 163
    .local v8, "runningFlag":I
    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I

    move-result v6

    .line 164
    .local v6, "nextFlag":I
    const/4 v4, 0x0

    .line 165
    .local v4, "isRunningFloat":Z
    const/4 v3, 0x0

    .line 166
    .local v3, "isNextFloat":Z
    and-int/lit16 v9, v8, 0x200

    if-eqz v9, :cond_0

    .line 167
    const/4 v4, 0x1

    .line 169
    :cond_0
    and-int/lit16 v9, v6, 0x200

    if-eqz v9, :cond_1

    .line 170
    const/4 v3, 0x1

    .line 175
    :cond_1
    if-nez v3, :cond_2

    if-nez v4, :cond_2

    .line 176
    const/4 v9, 0x0

    .line 226
    .end local v3    # "isNextFloat":Z
    .end local v4    # "isRunningFloat":Z
    .end local v6    # "nextFlag":I
    .end local v7    # "runningAc":Lcom/android/server/am/ActivityRecord;
    .end local v8    # "runningFlag":I
    :goto_1
    return v9

    .line 181
    .restart local v3    # "isNextFloat":Z
    .restart local v4    # "isRunningFloat":Z
    .restart local v6    # "nextFlag":I
    .restart local v7    # "runningAc":Lcom/android/server/am/ActivityRecord;
    .restart local v8    # "runningFlag":I
    :cond_2
    if-eqz p2, :cond_3

    iget-object v9, v7, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v10, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 189
    const-string v9, "MwActivityMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "blockByRunningActivity :  caller apps are same "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x4

    invoke-static {v11}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v9, -0x1

    goto :goto_1

    .line 195
    :cond_3
    iget-object v9, v7, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 196
    const-string v9, "MwActivityMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "blockByRunningActivity :  2 shortComponentNames are same "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x4

    invoke-static {v11}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v9, -0x2

    goto :goto_1

    .line 203
    :cond_4
    iget-object v9, v7, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    if-eqz v9, :cond_6

    iget-object v9, v7, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, v7, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v9, v10, :cond_6

    .line 207
    iget-object v9, v7, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v9, v9, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p5

    invoke-virtual {v9, p3, v0}, Lcom/android/server/am/ActivityStack;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 208
    const-string v9, "MwActivityMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "blockByRunningActivity :  3 exist same activity in resumed stack "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x4

    invoke-static {v11}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v9, -0x3

    goto/16 :goto_1

    .line 216
    :cond_5
    const-string v9, "MwActivityMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "blockByRunningActivity : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " has activity for resumed : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ". Therefore, don\'t be launched "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", callers = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x4

    invoke-static {v11}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v9, p0, Lcom/android/server/am/MwActivityMonitor;->mMwHandler:Landroid/os/Handler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 222
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 158
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    .line 226
    .end local v3    # "isNextFloat":Z
    .end local v4    # "isRunningFloat":Z
    .end local v6    # "nextFlag":I
    .end local v7    # "runningAc":Lcom/android/server/am/ActivityRecord;
    .end local v8    # "runningFlag":I
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_1
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 295
    iget-object v3, p0, Lcom/android/server/am/MwActivityMonitor;->mRunningActivity:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 296
    .local v0, "N":I
    if-gtz v0, :cond_1

    .line 304
    :cond_0
    return-void

    .line 299
    :cond_1
    const-string v3, "  MwActivityMonitor : "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 300
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 301
    iget-object v3, p0, Lcom/android/server/am/MwActivityMonitor;->mRunningActivity:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 302
    .local v1, "ac":Lcom/android/server/am/ActivityRecord;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 300
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public resetProcessMiniMaxStatus(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "p"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 316
    iget-object v1, p0, Lcom/android/server/am/MwActivityMonitor;->mMwHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 317
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Lcom/android/server/am/MwActivityMonitor$MessageObj;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/MwActivityMonitor$MessageObj;-><init>(Lcom/android/server/am/MwActivityMonitor;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 318
    iget-object v1, p0, Lcom/android/server/am/MwActivityMonitor;->mMwHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 319
    return-void
.end method

.method public updateProcessMiniMaxStatus(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/server/am/MwActivityMonitor;->mMwHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 331
    return-void
.end method
