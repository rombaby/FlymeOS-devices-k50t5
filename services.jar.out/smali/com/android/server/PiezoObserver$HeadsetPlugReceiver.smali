.class Lcom/android/server/PiezoObserver$HeadsetPlugReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PiezoObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PiezoObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeadsetPlugReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PiezoObserver;


# direct methods
.method private constructor <init>(Lcom/android/server/PiezoObserver;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/server/PiezoObserver$HeadsetPlugReceiver;->this$0:Lcom/android/server/PiezoObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PiezoObserver;Lcom/android/server/PiezoObserver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/PiezoObserver;
    .param p2, "x1"    # Lcom/android/server/PiezoObserver$1;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/server/PiezoObserver$HeadsetPlugReceiver;-><init>(Lcom/android/server/PiezoObserver;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 100
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "action":Ljava/lang/String;
    const-string v6, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 103
    const-string v6, "state"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 104
    const-string v6, "state"

    invoke-virtual {p2, v6, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_2

    .line 105
    iget-object v6, p0, Lcom/android/server/PiezoObserver$HeadsetPlugReceiver;->this$0:Lcom/android/server/PiezoObserver;

    # setter for: Lcom/android/server/PiezoObserver;->mIsHeadsetPlug:Z
    invoke-static {v6, v3}, Lcom/android/server/PiezoObserver;->access$202(Lcom/android/server/PiezoObserver;Z)Z

    .line 107
    :try_start_0
    iget-object v6, p0, Lcom/android/server/PiezoObserver$HeadsetPlugReceiver;->this$0:Lcom/android/server/PiezoObserver;

    # getter for: Lcom/android/server/PiezoObserver;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/PiezoObserver;->access$300(Lcom/android/server/PiezoObserver;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "ceramic_settings"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    .line 109
    .local v4, "mCoverState":I
    iget-object v6, p0, Lcom/android/server/PiezoObserver$HeadsetPlugReceiver;->this$0:Lcom/android/server/PiezoObserver;

    # getter for: Lcom/android/server/PiezoObserver;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/PiezoObserver;->access$300(Lcom/android/server/PiezoObserver;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "ceramics_state"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_0

    move v3, v5

    .line 111
    .local v3, "isOpen":Z
    :cond_0
    sget-object v6, Lcom/android/server/PiezoObserver;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "---onReceive---mCoverState->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "---state->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    if-ne v4, v5, :cond_1

    if-eqz v3, :cond_1

    .line 114
    new-instance v0, Landroid/content/Intent;

    const-string v5, "ceramic_speaker_notify_waves_state_action"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, "a_intent":Landroid/content/Intent;
    const-string v5, "state"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 116
    const/16 v5, 0x20

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 117
    iget-object v5, p0, Lcom/android/server/PiezoObserver$HeadsetPlugReceiver;->this$0:Lcom/android/server/PiezoObserver;

    # getter for: Lcom/android/server/PiezoObserver;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/PiezoObserver;->access$300(Lcom/android/server/PiezoObserver;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 118
    iget-object v5, p0, Lcom/android/server/PiezoObserver$HeadsetPlugReceiver;->this$0:Lcom/android/server/PiezoObserver;

    # getter for: Lcom/android/server/PiezoObserver;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/PiezoObserver;->access$300(Lcom/android/server/PiezoObserver;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "ceramic_speaker_notify_waves_state_action"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .end local v0    # "a_intent":Landroid/content/Intent;
    .end local v3    # "isOpen":Z
    .end local v4    # "mCoverState":I
    :cond_1
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v2

    .line 123
    .local v2, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/PiezoObserver;->TAG:Ljava/lang/String;

    const-string v6, ""

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 126
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v6, "state"

    invoke-virtual {p2, v6, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_1

    .line 127
    iget-object v6, p0, Lcom/android/server/PiezoObserver$HeadsetPlugReceiver;->this$0:Lcom/android/server/PiezoObserver;

    # setter for: Lcom/android/server/PiezoObserver;->mIsHeadsetPlug:Z
    invoke-static {v6, v5}, Lcom/android/server/PiezoObserver;->access$202(Lcom/android/server/PiezoObserver;Z)Z

    .line 129
    :try_start_1
    iget-object v6, p0, Lcom/android/server/PiezoObserver$HeadsetPlugReceiver;->this$0:Lcom/android/server/PiezoObserver;

    # getter for: Lcom/android/server/PiezoObserver;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/PiezoObserver;->access$300(Lcom/android/server/PiezoObserver;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "ceramic_settings"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    .line 131
    .restart local v4    # "mCoverState":I
    iget-object v6, p0, Lcom/android/server/PiezoObserver$HeadsetPlugReceiver;->this$0:Lcom/android/server/PiezoObserver;

    # getter for: Lcom/android/server/PiezoObserver;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/PiezoObserver;->access$300(Lcom/android/server/PiezoObserver;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "ceramics_state"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_3

    move v3, v5

    .line 133
    .restart local v3    # "isOpen":Z
    :cond_3
    sget-object v5, Lcom/android/server/PiezoObserver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "---onReceive---mCoverState->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "---state->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    if-eqz v3, :cond_1

    .line 136
    new-instance v0, Landroid/content/Intent;

    const-string v5, "ceramic_speaker_notify_waves_state_action"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    .restart local v0    # "a_intent":Landroid/content/Intent;
    const-string v5, "state"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 138
    const/16 v5, 0x20

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 139
    iget-object v5, p0, Lcom/android/server/PiezoObserver$HeadsetPlugReceiver;->this$0:Lcom/android/server/PiezoObserver;

    # getter for: Lcom/android/server/PiezoObserver;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/PiezoObserver;->access$300(Lcom/android/server/PiezoObserver;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 140
    iget-object v5, p0, Lcom/android/server/PiezoObserver$HeadsetPlugReceiver;->this$0:Lcom/android/server/PiezoObserver;

    # getter for: Lcom/android/server/PiezoObserver;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/PiezoObserver;->access$300(Lcom/android/server/PiezoObserver;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "ceramic_speaker_notify_waves_state_action"

    const/4 v7, -0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 144
    .end local v0    # "a_intent":Landroid/content/Intent;
    .end local v3    # "isOpen":Z
    .end local v4    # "mCoverState":I
    :catch_1
    move-exception v2

    .line 146
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/PiezoObserver;->TAG:Ljava/lang/String;

    const-string v6, ""

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 151
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 152
    sget-object v6, Lcom/android/server/PiezoObserver;->TAG:Ljava/lang/String;

    const-string v7, "---onReceive---boot completed  --initCeramic  >"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v6, p0, Lcom/android/server/PiezoObserver$HeadsetPlugReceiver;->this$0:Lcom/android/server/PiezoObserver;

    # invokes: Lcom/android/server/PiezoObserver;->initCeramic(Z)V
    invoke-static {v6, v5}, Lcom/android/server/PiezoObserver;->access$400(Lcom/android/server/PiezoObserver;Z)V

    goto/16 :goto_0
.end method
