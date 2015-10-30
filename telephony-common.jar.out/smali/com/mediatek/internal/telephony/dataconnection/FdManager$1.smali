.class Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;
.super Landroid/content/BroadcastReceiver;
.source "FdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/FdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onReceive: action="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->logd(Ljava/lang/String;)V

    .line 120
    const-string v11, "ril.fd.mode"

    const-string v12, "0"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 121
    .local v3, "fdMdEnableMode":I
    const-string v11, "gsm.3gswitch"

    const/4 v12, 0x1

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11

    add-int/lit8 v4, v11, -0x1

    .line 122
    .local v4, "fdSimId":I
    const-string v11, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 123
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    const/4 v12, 0x1

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mIsScreenOn:Z
    invoke-static {v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$002(Lcom/mediatek/internal/telephony/dataconnection/FdManager;Z)Z

    .line 124
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->isFdSupport()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 125
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "fdMdEnableMode="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", 3gSimID="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", when switching to SCREEN ON"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->logd(Ljava/lang/String;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    const/4 v12, 0x1

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mIsScreenOn:Z
    invoke-static {v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$002(Lcom/mediatek/internal/telephony/dataconnection/FdManager;Z)Z

    .line 128
    const/4 v11, 0x1

    if-ne v3, v11, :cond_1

    .line 131
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v11}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$100(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v11

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->getPhoneId(Lcom/android/internal/telephony/PhoneBase;)I
    invoke-static {v11}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$200(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v11

    if-ne v11, v4, :cond_0

    .line 132
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v11}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$100(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v11

    iget-object v11, v11, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v12, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;->INFO_MD_SCREEN_STATUS:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;

    invoke-virtual {v12}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;->ordinal()I

    move-result v12

    const/4 v13, 0x1

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    invoke-interface {v11, v12, v13, v14, v15}, Lcom/android/internal/telephony/CommandsInterface;->setFDMode(IIILandroid/os/Message;)V

    .line 135
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->isFdScreenOffOnly()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 137
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    const-string v12, "Because FD_SCREEN_OFF_ONLY, disable fd when screen on."

    invoke-virtual {v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->logd(Ljava/lang/String;)V

    .line 139
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    const/4 v12, 0x0

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->updateFdMdEnableStatus(Z)V
    invoke-static {v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$300(Lcom/mediatek/internal/telephony/dataconnection/FdManager;Z)V

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    const-string v12, "Not Support AP-trigger FD now"

    invoke-virtual {v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_2
    const-string v11, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 147
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    const/4 v12, 0x0

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mIsScreenOn:Z
    invoke-static {v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$002(Lcom/mediatek/internal/telephony/dataconnection/FdManager;Z)Z

    .line 148
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->isFdSupport()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 149
    const/4 v11, 0x1

    if-ne v3, v11, :cond_3

    .line 150
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "fdMdEnableMode="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", 3gSimID="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", when switching to SCREEN OFF"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->logd(Ljava/lang/String;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v11}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$100(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v11

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->getPhoneId(Lcom/android/internal/telephony/PhoneBase;)I
    invoke-static {v11}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$200(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v11

    if-ne v11, v4, :cond_0

    .line 153
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v11}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$100(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v11

    iget-object v11, v11, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v12, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;->INFO_MD_SCREEN_STATUS:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;

    invoke-virtual {v12}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;->ordinal()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    invoke-interface {v11, v12, v13, v14, v15}, Lcom/android/internal/telephony/CommandsInterface;->setFDMode(IIILandroid/os/Message;)V

    .line 156
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->isFdScreenOffOnly()Z

    move-result v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->checkNeedTurnOn()Z
    invoke-static {v11}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$400(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 158
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    const-string v12, "Because FD_SCREEN_OFF_ONLY, turn on fd when screen off."

    invoke-virtual {v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->logd(Ljava/lang/String;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    const/4 v12, 0x1

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->updateFdMdEnableStatus(Z)V
    invoke-static {v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$300(Lcom/mediatek/internal/telephony/dataconnection/FdManager;Z)V

    goto/16 :goto_0

    .line 164
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    const-string v12, "Not Support AP-trigger FD now"

    invoke-virtual {v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 167
    :cond_4
    const-string v11, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 168
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->isFdSupport()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 169
    const-string v11, "status"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 170
    .local v10, "status":I
    const-string v11, "plugged"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 171
    .local v5, "plugged":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mChargingMode:Z
    invoke-static {v11}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$500(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)Z

    move-result v6

    .line 173
    .local v6, "previousChargingMode":Z
    const-string v8, ""

    .local v8, "sChargingModeStr":Ljava/lang/String;
    const-string v9, ""

    .line 174
    .local v9, "sPluggedStr":Ljava/lang/String;
    const/4 v11, 0x2

    if-ne v10, v11, :cond_b

    .line 175
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    const/4 v12, 0x1

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mChargingMode:Z
    invoke-static {v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$502(Lcom/mediatek/internal/telephony/dataconnection/FdManager;Z)Z

    .line 176
    const-string v8, "Charging"

    .line 182
    :goto_1
    const/4 v11, 0x1

    if-ne v5, v11, :cond_c

    .line 183
    const-string v9, "Plugged in AC"

    .line 188
    :cond_5
    :goto_2
    const/4 v11, 0x1

    if-eq v5, v11, :cond_6

    const/4 v11, 0x2

    if-ne v5, v11, :cond_7

    .line 190
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    const/4 v12, 0x1

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mChargingMode:Z
    invoke-static {v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$502(Lcom/mediatek/internal/telephony/dataconnection/FdManager;Z)Z

    .line 193
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mEnableFdOnCharing:I
    invoke-static {v11}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$600(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)I

    move-result v7

    .line 194
    .local v7, "previousEnableFDOnCharging":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    const-string v12, "fd.on.charge"

    const-string v13, "0"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mEnableFdOnCharing:I
    invoke-static {v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$602(Lcom/mediatek/internal/telephony/dataconnection/FdManager;I)I

    .line 197
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mChargingMode:Z
    invoke-static {v11}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$500(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)Z

    move-result v11

    if-ne v6, v11, :cond_8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mEnableFdOnCharing:I
    invoke-static {v11}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$600(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)I

    move-result v11

    if-eq v7, v11, :cond_9

    .line 199
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "fdMdEnableMode="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", 3gSimID="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", when charging state is changed"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->logd(Ljava/lang/String;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "previousEnableFdOnCharging="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mEnableFdOnCharing="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mEnableFdOnCharing:I
    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$600(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", when charging state is changed"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->logd(Ljava/lang/String;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "previousChargingMode="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mChargingMode="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mChargingMode:Z
    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$500(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", status="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->logd(Ljava/lang/String;)V

    .line 210
    :cond_9
    const/4 v11, 0x1

    if-ne v3, v11, :cond_0

    .line 211
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v11}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$100(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v11

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->getPhoneId(Lcom/android/internal/telephony/PhoneBase;)I
    invoke-static {v11}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$200(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v11

    if-ne v11, v4, :cond_0

    .line 212
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mChargingMode:Z
    invoke-static {v11}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$500(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)Z

    move-result v11

    if-ne v6, v11, :cond_a

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mEnableFdOnCharing:I
    invoke-static {v11}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$600(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)I

    move-result v11

    if-eq v7, v11, :cond_0

    .line 214
    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->checkNeedTurnOn()Z
    invoke-static {v11}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$400(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 215
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    const/4 v12, 0x1

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->updateFdMdEnableStatus(Z)V
    invoke-static {v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$300(Lcom/mediatek/internal/telephony/dataconnection/FdManager;Z)V

    goto/16 :goto_0

    .line 178
    .end local v7    # "previousEnableFDOnCharging":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    const/4 v12, 0x0

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mChargingMode:Z
    invoke-static {v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$502(Lcom/mediatek/internal/telephony/dataconnection/FdManager;Z)Z

    .line 179
    const-string v8, "Non-Charging"

    goto/16 :goto_1

    .line 184
    :cond_c
    const/4 v11, 0x2

    if-ne v5, v11, :cond_5

    .line 185
    const-string v9, "Plugged in USB"

    goto/16 :goto_2

    .line 217
    .restart local v7    # "previousEnableFDOnCharging":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    const/4 v12, 0x0

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->updateFdMdEnableStatus(Z)V
    invoke-static {v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$300(Lcom/mediatek/internal/telephony/dataconnection/FdManager;Z)V

    goto/16 :goto_0

    .line 223
    .end local v5    # "plugged":I
    .end local v6    # "previousChargingMode":Z
    .end local v7    # "previousEnableFDOnCharging":I
    .end local v8    # "sChargingModeStr":Ljava/lang/String;
    .end local v9    # "sPluggedStr":Ljava/lang/String;
    .end local v10    # "status":I
    :cond_e
    const-string v11, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 224
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->isFdSupport()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 225
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    const-string v12, "Received ConnectivityManager.ACTION_TETHER_STATE_CHANGED"

    invoke-virtual {v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->logd(Ljava/lang/String;)V

    .line 226
    const-string v11, "activeArray"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 228
    .local v2, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_f

    const/4 v11, 0x1

    :goto_3
    # setter for: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mIsTetheredMode:Z
    invoke-static {v12, v11}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$702(Lcom/mediatek/internal/telephony/dataconnection/FdManager;Z)Z

    .line 229
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[TETHER_STATE_CHANGED]mIsTetheredMode = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mIsTetheredMode:Z
    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$700(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "mChargingMode="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mChargingMode:Z
    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$500(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->logd(Ljava/lang/String;)V

    .line 231
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->checkNeedTurnOn()Z
    invoke-static {v11}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$400(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 232
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    const/4 v12, 0x1

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->updateFdMdEnableStatus(Z)V
    invoke-static {v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$300(Lcom/mediatek/internal/telephony/dataconnection/FdManager;Z)V

    goto/16 :goto_0

    .line 228
    :cond_f
    const/4 v11, 0x0

    goto :goto_3

    .line 234
    :cond_10
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    const/4 v12, 0x0

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->updateFdMdEnableStatus(Z)V
    invoke-static {v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$300(Lcom/mediatek/internal/telephony/dataconnection/FdManager;Z)V

    goto/16 :goto_0
.end method
