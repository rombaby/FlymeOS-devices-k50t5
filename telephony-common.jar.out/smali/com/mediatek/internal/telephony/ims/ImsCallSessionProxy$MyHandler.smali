.class Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;
.super Landroid/os/Handler;
.source "ImsCallSessionProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final PAU_END_FLAG_FIELD:Ljava/lang/String; = ">"

.field private static final PAU_NAME_FIELD:Ljava/lang/String; = "<name:"

.field private static final PAU_NUMBER_FIELD:Ljava/lang/String; = "<tel:"

.field private static final PAU_SIP_NUMBER_FIELD:Ljava/lang/String; = "<sip:"


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;


# direct methods
.method private constructor <init>(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)V
    .locals 0

    .prologue
    .line 572
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$1;

    .prologue
    .line 572
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;-><init>(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)V

    return-void
.end method

.method private getFieldValueFromPau(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "pau"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;

    .prologue
    .line 580
    const-string v2, ""

    .line 581
    .local v2, "value":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 582
    :cond_0
    const-string v4, "ImsCallSessionProxy"

    const-string v5, "getFieldValueFromPau()... pau or field is null !"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .line 596
    .end local v2    # "value":Ljava/lang/String;
    .local v3, "value":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 586
    .end local v3    # "value":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 587
    const-string v4, "ImsCallSessionProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFieldValueFromPau()... There is no such field in pau ! field / pau :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .line 589
    .end local v2    # "value":Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_0

    .line 592
    .end local v3    # "value":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 593
    .local v1, "startIndex":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v1, v4

    .line 594
    const-string v4, ">"

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 595
    .local v0, "endIndex":I
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 596
    .end local v2    # "value":Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_0
.end method

.method private sipCauseFromCode(I)I
    .locals 6
    .param p1, "causeCode"    # I

    .prologue
    const/16 v2, 0x1fe

    const/16 v1, 0x154

    .line 600
    const-string v3, "ImsCallSessionProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sipCauseFromCode: causeCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    sparse-switch p1, :sswitch_data_0

    .line 684
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/internal/telephony/ims/ImsService;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ims/ImsService;->getImsServiceState()I

    move-result v0

    .line 686
    .local v0, "serviceState":I
    const-string v1, "ImsCallSessionProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "serviceState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 689
    const/16 v1, 0x6f

    .line 697
    .end local v0    # "serviceState":I
    :goto_0
    :sswitch_0
    return v1

    .line 604
    :sswitch_1
    const/16 v1, 0x152

    goto :goto_0

    .line 608
    :sswitch_2
    const/16 v1, 0x150

    goto :goto_0

    .line 616
    :sswitch_3
    const/16 v1, 0x15f

    goto :goto_0

    .line 619
    :sswitch_4
    const/16 v1, 0x8d

    goto :goto_0

    .line 623
    :sswitch_5
    const/16 v1, 0x66

    goto :goto_0

    .line 631
    :sswitch_6
    const/16 v1, 0x162

    goto :goto_0

    .line 634
    :sswitch_7
    const/16 v1, 0xca

    goto :goto_0

    .line 637
    :sswitch_8
    const/16 v1, 0x1f6

    goto :goto_0

    .line 640
    :sswitch_9
    const/16 v1, 0x169

    goto :goto_0

    :sswitch_a
    move v1, v2

    .line 643
    goto :goto_0

    .line 647
    :sswitch_b
    const/16 v1, 0x151

    goto :goto_0

    .line 654
    :sswitch_c
    const/16 v1, 0x160

    goto :goto_0

    .line 658
    :sswitch_d
    const/16 v1, 0x14c

    goto :goto_0

    .line 665
    :sswitch_e
    const/16 v1, 0x14d

    goto :goto_0

    .line 668
    :sswitch_f
    const/16 v1, 0x153

    goto :goto_0

    .line 671
    :sswitch_10
    const/16 v1, 0x14f

    goto :goto_0

    .line 675
    :sswitch_11
    const/16 v1, 0x156

    goto :goto_0

    .line 679
    :sswitch_12
    const/16 v1, 0x149

    goto :goto_0

    .line 690
    .restart local v0    # "serviceState":I
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 691
    const/16 v1, 0x6a

    goto :goto_0

    .line 692
    :cond_1
    const/16 v1, 0x10

    if-ne p1, v1, :cond_2

    move v1, v2

    .line 693
    goto :goto_0

    .line 697
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 602
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_b
        0x3 -> :sswitch_e
        0x6 -> :sswitch_0
        0x8 -> :sswitch_f
        0x11 -> :sswitch_1
        0x12 -> :sswitch_7
        0x13 -> :sswitch_8
        0x15 -> :sswitch_9
        0x1c -> :sswitch_b
        0x1d -> :sswitch_6
        0x1f -> :sswitch_a
        0x22 -> :sswitch_3
        0x26 -> :sswitch_c
        0x29 -> :sswitch_2
        0x2a -> :sswitch_c
        0x2b -> :sswitch_6
        0x2c -> :sswitch_2
        0x2f -> :sswitch_c
        0x31 -> :sswitch_0
        0x37 -> :sswitch_d
        0x39 -> :sswitch_d
        0x3a -> :sswitch_6
        0x3f -> :sswitch_c
        0x41 -> :sswitch_0
        0x44 -> :sswitch_4
        0x45 -> :sswitch_3
        0x51 -> :sswitch_11
        0x58 -> :sswitch_c
        0x66 -> :sswitch_10
        0x6f -> :sswitch_3
        0x7f -> :sswitch_6
        0xf0 -> :sswitch_5
        0xf1 -> :sswitch_5
        0x17c -> :sswitch_12
    .end sparse-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 26
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 705
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 1373
    :cond_0
    :goto_0
    return-void

    .line 729
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 730
    .local v9, "ar":Landroid/os/AsyncResult;
    iget-object v3, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object v11, v3

    check-cast v11, [Ljava/lang/String;

    .line 731
    .local v11, "callInfo":[Ljava/lang/String;
    const/16 v19, 0x0

    .line 732
    .local v19, "msgType":I
    const/16 v12, 0xff

    .line 734
    .local v12, "callMode":I
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "receive EVENT_CALL_INFO_INDICATION"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    const/4 v3, 0x1

    aget-object v3, v11, v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    aget-object v3, v11, v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 736
    const/4 v3, 0x1

    aget-object v3, v11, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 739
    :cond_1
    const/4 v3, 0x5

    aget-object v3, v11, v3

    if-eqz v3, :cond_2

    const/4 v3, 0x5

    aget-object v3, v11, v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 740
    const/4 v3, 0x5

    aget-object v3, v11, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 743
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsMerging:Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    aget-object v3, v11, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 744
    packed-switch v19, :pswitch_data_0

    goto :goto_0

    .line 746
    :pswitch_0
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "IMS: +ECPI : conference assign call id"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x3

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mState:I
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$502(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;I)I

    .line 748
    new-instance v4, Lcom/android/ims/ImsCallProfile;

    invoke-direct {v4}, Lcom/android/ims/ImsCallProfile;-><init>()V

    .line 749
    .local v4, "imsCallProfile":Lcom/android/ims/ImsCallProfile;
    const/4 v3, 0x6

    aget-object v3, v11, v3

    if-eqz v3, :cond_3

    const/4 v3, 0x6

    aget-object v3, v11, v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 750
    const-string v3, "oi"

    const/4 v5, 0x6

    aget-object v5, v11, v5

    invoke-virtual {v4, v3, v5}, Lcom/android/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    const-string v3, "remote_uri"

    const/4 v5, 0x6

    aget-object v5, v11, v5

    invoke-virtual {v4, v3, v5}, Lcom/android/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    const-string v3, "oir"

    const/4 v5, 0x2

    invoke-virtual {v4, v3, v5}, Lcom/android/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 765
    :goto_1
    new-instance v2, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$600(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Landroid/content/Context;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/internal/telephony/ims/ImsService;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsService;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    invoke-static {v7}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$700(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v11, v8

    invoke-direct/range {v2 .. v8}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;-><init>(Landroid/content/Context;Lcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;Lcom/mediatek/internal/telephony/ims/ImsService;Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;Ljava/lang/String;)V

    .line 768
    .local v2, "pendingConf":Lcom/android/ims/internal/IImsCallSession;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v6

    invoke-interface {v3, v5, v2, v6}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 770
    :catch_0
    move-exception v14

    .line 771
    .local v14, "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException when session merged started"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 761
    .end local v2    # "pendingConf":Lcom/android/ims/internal/IImsCallSession;
    .end local v14    # "e":Landroid/os/RemoteException;
    :cond_3
    const-string v3, "oir"

    const/4 v5, 0x2

    invoke-virtual {v4, v3, v5}, Lcom/android/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 777
    .end local v4    # "imsCallProfile":Lcom/android/ims/ImsCallProfile;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aget-object v5, v11, v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 778
    sparse-switch v19, :sswitch_data_1

    goto/16 :goto_0

    .line 780
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x3

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mState:I
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$502(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;I)I

    .line 781
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "IMS: +ECPI : incoming call"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    const/4 v3, 0x5

    aget-object v3, v11, v3

    if-eqz v3, :cond_5

    const/4 v3, 0x5

    aget-object v3, v11, v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 783
    const/4 v3, 0x5

    aget-object v3, v11, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 786
    :cond_5
    const/16 v3, 0x15

    if-ne v12, v3, :cond_6

    .line 787
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    const/4 v5, 0x4

    iput v5, v3, Lcom/android/ims/ImsCallProfile;->mCallType:I

    .line 790
    :cond_6
    const/4 v3, 0x6

    aget-object v3, v11, v3

    if-eqz v3, :cond_7

    const/4 v3, 0x6

    aget-object v3, v11, v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 791
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    const-string v5, "oi"

    const/4 v6, 0x6

    aget-object v6, v11, v6

    invoke-virtual {v3, v5, v6}, Lcom/android/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    const-string v5, "remote_uri"

    const/4 v6, 0x6

    aget-object v6, v11, v6

    invoke-virtual {v3, v5, v6}, Lcom/android/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    const-string v5, "oir"

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6}, Lcom/android/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 805
    :goto_2
    const/16 v22, 0x1

    .line 807
    .local v22, "serviceId":I
    const-string v3, "ImsCallSessionProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMS: sendIncomingCallIntent() call_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dialString = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x6

    aget-object v6, v11, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    new-instance v17, Landroid/content/Intent;

    const-string v3, "com.android.ims.IMS_INCOMING_CALL"

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 811
    .local v17, "intent":Landroid/content/Intent;
    const-string v3, "android:imsCallID"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 812
    const-string v3, "android:imsDialString"

    const/4 v5, 0x6

    aget-object v5, v11, v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 813
    const-string v3, "android:imsServiceId"

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 814
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$600(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 801
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v22    # "serviceId":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    const-string v5, "oir"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lcom/android/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 817
    :sswitch_2
    const/16 v18, 0x1

    .line 819
    .local v18, "isIbt":I
    const/4 v3, 0x2

    aget-object v3, v11, v3

    if-eqz v3, :cond_8

    .line 820
    const/4 v3, 0x2

    aget-object v3, v11, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 823
    :cond_8
    if-nez v18, :cond_9

    .line 824
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    iget-object v3, v3, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    const/4 v5, 0x0

    iput v5, v3, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 828
    :cond_9
    const/16 v3, 0x8

    aget-object v3, v11, v3

    if-eqz v3, :cond_b

    const/16 v3, 0x8

    aget-object v3, v11, v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 829
    const/16 v3, 0x8

    aget-object v3, v11, v3

    const-string v5, "<sip:"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->getFieldValueFromPau(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 831
    .local v25, "sipNumber":Ljava/lang/String;
    const-string v3, "ImsCallSessionProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSipNumberFromPAU()... sipNumber: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    const-string v5, "pau"

    const/16 v6, 0x8

    aget-object v6, v11, v6

    invoke-virtual {v3, v5, v6}, Lcom/android/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    const-string v3, ""

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 836
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    const-string v5, "remote_uri"

    move-object/from16 v0, v25

    invoke-virtual {v3, v5, v0}, Lcom/android/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 842
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionUpdated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 850
    .end local v25    # "sipNumber":Ljava/lang/String;
    :cond_b
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 852
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v6

    iget-object v6, v6, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    invoke-interface {v3, v5, v6}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionProgressing(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsStreamMediaProfile;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 858
    :cond_c
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x0

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHasPendingMo:Z
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$902(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z

    goto/16 :goto_0

    .line 844
    .restart local v25    # "sipNumber":Ljava/lang/String;
    :catch_1
    move-exception v14

    .line 845
    .restart local v14    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException callSessionUpdated"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 854
    .end local v14    # "e":Landroid/os/RemoteException;
    .end local v25    # "sipNumber":Ljava/lang/String;
    :catch_2
    move-exception v14

    .line 855
    .restart local v14    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException callSessionProgressing"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 861
    .end local v14    # "e":Landroid/os/RemoteException;
    .end local v18    # "isIbt":I
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x4

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mState:I
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$502(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;I)I

    .line 862
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    iget-object v3, v3, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    const/4 v5, 0x3

    iput v5, v3, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 865
    const/16 v3, 0x16

    if-eq v12, v3, :cond_d

    const/16 v3, 0x17

    if-ne v12, v3, :cond_12

    .line 866
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    const-string v5, "mpty"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lcom/android/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 873
    :goto_5
    const/16 v3, 0x8

    aget-object v3, v11, v3

    if-eqz v3, :cond_f

    const/16 v3, 0x8

    aget-object v3, v11, v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 874
    const/16 v3, 0x8

    aget-object v3, v11, v3

    const-string v5, "<sip:"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->getFieldValueFromPau(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 876
    .restart local v25    # "sipNumber":Ljava/lang/String;
    const-string v3, "ImsCallSessionProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSipNumberFromPAU()... sipNumber: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    const-string v5, "pau"

    const/16 v6, 0x8

    aget-object v6, v11, v6

    invoke-virtual {v3, v5, v6}, Lcom/android/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    const-string v3, ""

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 881
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    const-string v5, "remote_uri"

    move-object/from16 v0, v25

    invoke-virtual {v3, v5, v0}, Lcom/android/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 887
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionUpdated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 895
    .end local v25    # "sipNumber":Ljava/lang/String;
    :cond_f
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 900
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHasPendingMo:Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 901
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v6

    iget-object v6, v6, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    invoke-interface {v3, v5, v6}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionProgressing(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsStreamMediaProfile;)V

    .line 905
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionStarted(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 911
    :cond_11
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x0

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHasPendingMo:Z
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$902(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z

    goto/16 :goto_0

    .line 869
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    const-string v5, "mpty"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/android/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 889
    .restart local v25    # "sipNumber":Ljava/lang/String;
    :catch_3
    move-exception v14

    .line 890
    .restart local v14    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException callSessionUpdated()"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 907
    .end local v14    # "e":Landroid/os/RemoteException;
    .end local v25    # "sipNumber":Ljava/lang/String;
    :catch_4
    move-exception v14

    .line 908
    .restart local v14    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException callSessionStarted()"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 914
    .end local v14    # "e":Landroid/os/RemoteException;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x0

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsCallActive:Z
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1002(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z

    .line 915
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x1

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsCallHold:Z
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1102(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z

    .line 916
    const/16 v3, 0x8

    aget-object v3, v11, v3

    if-eqz v3, :cond_14

    const/16 v3, 0x8

    aget-object v3, v11, v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 917
    const/16 v3, 0x8

    aget-object v3, v11, v3

    const-string v5, "<sip:"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->getFieldValueFromPau(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 919
    .restart local v25    # "sipNumber":Ljava/lang/String;
    const-string v3, "ImsCallSessionProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSipNumberFromPAU()... sipNumber: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    const-string v5, "pau"

    const/16 v6, 0x8

    aget-object v6, v11, v6

    invoke-virtual {v3, v5, v6}, Lcom/android/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    const-string v3, ""

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 924
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    const-string v5, "remote_uri"

    move-object/from16 v0, v25

    invoke-virtual {v3, v5, v0}, Lcom/android/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 929
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionUpdated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_6

    .line 937
    .end local v25    # "sipNumber":Ljava/lang/String;
    :cond_14
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 939
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionHoldReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_0

    .line 941
    :catch_5
    move-exception v14

    .line 942
    .restart local v14    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException callSessionHoldReceived"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 931
    .end local v14    # "e":Landroid/os/RemoteException;
    .restart local v25    # "sipNumber":Ljava/lang/String;
    :catch_6
    move-exception v14

    .line 932
    .restart local v14    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException callSessionUpdated"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 947
    .end local v14    # "e":Landroid/os/RemoteException;
    .end local v25    # "sipNumber":Ljava/lang/String;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x1

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsCallActive:Z
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1002(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z

    .line 948
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x0

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsCallHold:Z
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1102(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z

    .line 949
    const/16 v3, 0x8

    aget-object v3, v11, v3

    if-eqz v3, :cond_16

    const/16 v3, 0x8

    aget-object v3, v11, v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 950
    const/16 v3, 0x8

    aget-object v3, v11, v3

    const-string v5, "<sip:"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->getFieldValueFromPau(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 952
    .restart local v25    # "sipNumber":Ljava/lang/String;
    const-string v3, "ImsCallSessionProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSipNumberFromPAU()... sipNumber: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    const-string v5, "pau"

    const/16 v6, 0x8

    aget-object v6, v11, v6

    invoke-virtual {v3, v5, v6}, Lcom/android/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    const-string v3, ""

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 957
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    const-string v5, "remote_uri"

    move-object/from16 v0, v25

    invoke-virtual {v3, v5, v0}, Lcom/android/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 963
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionUpdated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_8

    .line 971
    .end local v25    # "sipNumber":Ljava/lang/String;
    :cond_16
    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 973
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mOnHold:Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Z

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 974
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionResumeReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_7

    goto/16 :goto_0

    .line 977
    :catch_7
    move-exception v14

    .line 978
    .restart local v14    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException SessionResumeReceived"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 965
    .end local v14    # "e":Landroid/os/RemoteException;
    .restart local v25    # "sipNumber":Ljava/lang/String;
    :catch_8
    move-exception v14

    .line 966
    .restart local v14    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException callSessionUpdated"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 983
    .end local v14    # "e":Landroid/os/RemoteException;
    .end local v25    # "sipNumber":Ljava/lang/String;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x1

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsOnTerminated:Z
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1302(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z

    .line 984
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/16 v5, 0x8

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mState:I
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$502(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;I)I

    .line 985
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHasPendingMo:Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 986
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x0

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHasPendingMo:Z
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$902(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z

    .line 987
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    sget-object v5, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;->DIAL:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallErrorState:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1402(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;)Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;

    .line 991
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v3

    const/16 v5, 0x69

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v21

    .line 993
    .local v21, "result":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$700(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->getLastCallFailCause(Landroid/os/Message;)V

    .line 994
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x0

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mOnHold:Z
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1202(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z

    goto/16 :goto_0

    .line 989
    .end local v21    # "result":Landroid/os/Message;
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    sget-object v5, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;->DISCONNECT:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallErrorState:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1402(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;)Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;

    goto :goto_a

    .line 999
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const/16 v3, 0x82

    move/from16 v0, v19

    if-ne v0, v3, :cond_0

    .line 1000
    const-string v3, "ImsCallSessionProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMS: receive 130 URC, call_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v11, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x3

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mState:I
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$502(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;I)I

    .line 1002
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x0

    aget-object v5, v11, v5

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$202(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 1006
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "callInfo":[Ljava/lang/String;
    .end local v12    # "callMode":I
    .end local v19    # "msgType":I
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1008
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "receive EVENT_RINGBACK_TONE"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1012
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1014
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "receive EVENT_ECONF_RESULT_INDICATION"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    iget-object v3, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object v15, v3

    check-cast v15, [Ljava/lang/String;

    .line 1019
    .local v15, "econfResult":[Ljava/lang/String;
    const/4 v3, 0x3

    aget-object v3, v15, v3

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1021
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "merge call successed"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 1026
    :try_start_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    invoke-interface {v3, v5}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_9

    .line 1045
    :cond_19
    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x0

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsMerging:Z
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$402(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z

    goto/16 :goto_0

    .line 1027
    :catch_9
    move-exception v14

    .line 1028
    .restart local v14    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException callSessionMerged()"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1033
    .end local v14    # "e":Landroid/os/RemoteException;
    :cond_1a
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "merge call failed!!"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 1038
    :try_start_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    new-instance v6, Lcom/android/ims/ImsReasonInfo;

    invoke-direct {v6}, Lcom/android/ims/ImsReasonInfo;-><init>()V

    invoke-interface {v3, v5, v6}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionMergeFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_b

    .line 1040
    :catch_a
    move-exception v14

    .line 1041
    .restart local v14    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException callSessionMergeFailed()"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1049
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v14    # "e":Landroid/os/RemoteException;
    .end local v15    # "econfResult":[Ljava/lang/String;
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1051
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "receive DIAL_RESULT or DIAL_CONFERENCE_RESULT"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    .line 1055
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "dial call failed!!"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1059
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v3

    const/16 v5, 0x69

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v21

    .line 1061
    .restart local v21    # "result":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    sget-object v5, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;->DIAL:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallErrorState:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1402(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;)Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;

    .line 1062
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$700(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->getLastCallFailCause(Landroid/os/Message;)V

    .line 1063
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x0

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHasPendingMo:Z
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$902(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z

    goto/16 :goto_0

    .line 1068
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v21    # "result":Landroid/os/Message;
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1070
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "receive EVENT_HOLD_RESULT"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1073
    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1b

    .line 1075
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "hold call failed!!"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    :try_start_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    new-instance v6, Lcom/android/ims/ImsReasonInfo;

    invoke-direct {v6}, Lcom/android/ims/ImsReasonInfo;-><init>()V

    invoke-interface {v3, v5, v6}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionHoldFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_b

    goto/16 :goto_0

    .line 1080
    :catch_b
    move-exception v14

    .line 1081
    .restart local v14    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException callSessionHoldFailed()"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1085
    .end local v14    # "e":Landroid/os/RemoteException;
    :cond_1b
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "hold call successed!!"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    :try_start_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionHeld(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 1090
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x1

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mOnHold:Z
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1202(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_c

    goto/16 :goto_0

    .line 1091
    :catch_c
    move-exception v14

    .line 1092
    .restart local v14    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException callSessionHeld()"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1098
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v14    # "e":Landroid/os/RemoteException;
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1100
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "receive EVENT_RESUME_RESULT"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1103
    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1c

    .line 1105
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "resume call failed!!"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    :try_start_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    new-instance v6, Lcom/android/ims/ImsReasonInfo;

    invoke-direct {v6}, Lcom/android/ims/ImsReasonInfo;-><init>()V

    invoke-interface {v3, v5, v6}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionResumeFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_d

    goto/16 :goto_0

    .line 1110
    :catch_d
    move-exception v14

    .line 1111
    .restart local v14    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException callSessionResumeFailed()"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1115
    .end local v14    # "e":Landroid/os/RemoteException;
    :cond_1c
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "resume call successed"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :try_start_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionResumed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 1120
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x0

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mOnHold:Z
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1202(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_e

    goto/16 :goto_0

    .line 1121
    :catch_e
    move-exception v14

    .line 1122
    .restart local v14    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException callSessionResumed()"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1128
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v14    # "e":Landroid/os/RemoteException;
    :sswitch_c
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1130
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "receive EVENT_MERGE_RESULT"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_1d

    .line 1133
    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1e

    .line 1135
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "merge call failed!!"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    :try_start_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    new-instance v6, Lcom/android/ims/ImsReasonInfo;

    invoke-direct {v6}, Lcom/android/ims/ImsReasonInfo;-><init>()V

    invoke-interface {v3, v5, v6}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionMergeFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_f

    .line 1154
    :cond_1d
    :goto_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x0

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsMerging:Z
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$402(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z

    goto/16 :goto_0

    .line 1140
    :catch_f
    move-exception v14

    .line 1141
    .restart local v14    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException callSessionMergeFailed()"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1145
    .end local v14    # "e":Landroid/os/RemoteException;
    :cond_1e
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "merge call successed"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    :try_start_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    invoke-interface {v3, v5}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_c

    .line 1149
    :catch_10
    move-exception v14

    .line 1150
    .restart local v14    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException callSessionMerged()"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1157
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v14    # "e":Landroid/os/RemoteException;
    :sswitch_d
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1159
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "receive EVENT_SWAP_BEFORE_MERGE_RESULT"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1f

    .line 1163
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "resume call failed!!"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1168
    :try_start_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    new-instance v6, Lcom/android/ims/ImsReasonInfo;

    invoke-direct {v6}, Lcom/android/ims/ImsReasonInfo;-><init>()V

    invoke-interface {v3, v5, v6}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionMergeFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_11

    goto/16 :goto_0

    .line 1170
    :catch_11
    move-exception v14

    .line 1171
    .restart local v14    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException callSessionMergeFailed()"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1176
    .end local v14    # "e":Landroid/os/RemoteException;
    :cond_1f
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "resume call successed"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$700(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/internal/telephony/ims/ImsCallInfo;

    move-result-object v20

    .line 1180
    .local v20, "myCallInfo":Lcom/mediatek/internal/telephony/ims/ImsCallInfo;
    const/4 v10, 0x0

    .line 1181
    .local v10, "beMergedCallInfo":Lcom/mediatek/internal/telephony/ims/ImsCallInfo;
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mState:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    sget-object v5, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    if-ne v3, v5, :cond_22

    .line 1182
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$700(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-result-object v3

    sget-object v5, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    invoke-virtual {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->getCallInfo(Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;)Lcom/mediatek/internal/telephony/ims/ImsCallInfo;

    move-result-object v10

    .line 1189
    :cond_20
    :goto_d
    if-nez v10, :cond_21

    .line 1190
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_21

    .line 1192
    :try_start_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    new-instance v6, Lcom/android/ims/ImsReasonInfo;

    invoke-direct {v6}, Lcom/android/ims/ImsReasonInfo;-><init>()V

    invoke-interface {v3, v5, v6}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionMergeFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_12

    .line 1200
    :cond_21
    :goto_e
    move-object/from16 v0, v20

    iget-boolean v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mIsConference:Z

    if-eqz v3, :cond_23

    .line 1201
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v3

    const/16 v5, 0xce

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v21

    .line 1202
    .restart local v21    # "result":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$700(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget-object v6, v10, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mCallNum:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v3, v5, v6, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->inviteParticipants(ILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1184
    .end local v21    # "result":Landroid/os/Message;
    :cond_22
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mState:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    sget-object v5, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    if-ne v3, v5, :cond_20

    .line 1185
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$700(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-result-object v3

    sget-object v5, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    invoke-virtual {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->getCallInfo(Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;)Lcom/mediatek/internal/telephony/ims/ImsCallInfo;

    move-result-object v10

    goto :goto_d

    .line 1194
    :catch_12
    move-exception v14

    .line 1195
    .restart local v14    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException callSessionMergeFailed()"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 1205
    .end local v14    # "e":Landroid/os/RemoteException;
    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v3

    const/16 v5, 0xce

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v21

    .line 1206
    .restart local v21    # "result":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$700(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-result-object v3

    iget-object v5, v10, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mCallNum:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v3, v5, v6, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->inviteParticipants(ILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1214
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "beMergedCallInfo":Lcom/mediatek/internal/telephony/ims/ImsCallInfo;
    .end local v20    # "myCallInfo":Lcom/mediatek/internal/telephony/ims/ImsCallInfo;
    .end local v21    # "result":Landroid/os/Message;
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1216
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "receive EVENT_ADD_CONFERENCE_RESULT"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsMerging:Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1220
    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    .line 1221
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x0

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsMerging:Z
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$402(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z

    .line 1223
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1225
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "merge call failed!!"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    :try_start_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    new-instance v6, Lcom/android/ims/ImsReasonInfo;

    invoke-direct {v6}, Lcom/android/ims/ImsReasonInfo;-><init>()V

    invoke-interface {v3, v5, v6}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionMergeFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_13

    goto/16 :goto_0

    .line 1230
    :catch_13
    move-exception v14

    .line 1231
    .restart local v14    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException callSessionMergeFailed()"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1241
    .end local v14    # "e":Landroid/os/RemoteException;
    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsOnTerminated:Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Z

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_0

    .line 1245
    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_25

    .line 1246
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x1

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsAddRemoveParticipantsCommandOK:Z
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z

    .line 1248
    :cond_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # operator++ for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1708(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)I

    .line 1250
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1700(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mPendingParticipantStatistics:I
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)I

    move-result v5

    if-ge v3, v5, :cond_26

    .line 1251
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v3

    const/16 v5, 0xce

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v21

    .line 1253
    .restart local v21    # "result":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$700(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mPendingParticipantInfo:[Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1900(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)[Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I
    invoke-static {v7}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1700(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)I

    move-result v7

    aget-object v6, v6, v7

    move-object/from16 v0, v21

    invoke-virtual {v3, v5, v6, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->inviteParticipants(ILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1257
    .end local v21    # "result":Landroid/os/Message;
    :cond_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_27

    .line 1258
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsAddRemoveParticipantsCommandOK:Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1600(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 1260
    :try_start_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    new-instance v6, Lcom/android/ims/ImsReasonInfo;

    invoke-direct {v6}, Lcom/android/ims/ImsReasonInfo;-><init>()V

    invoke-interface {v3, v5, v6}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionInviteParticipantsRequestFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_14

    .line 1274
    :cond_27
    :goto_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x0

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsAddRemoveParticipantsCommandOK:Z
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z

    goto/16 :goto_0

    .line 1262
    :catch_14
    move-exception v14

    .line 1263
    .restart local v14    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException InviteFailed()"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 1267
    .end local v14    # "e":Landroid/os/RemoteException;
    :cond_28
    :try_start_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    invoke-interface {v3, v5}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionInviteParticipantsRequestDelivered(Lcom/android/ims/internal/IImsCallSession;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_15

    goto :goto_f

    .line 1269
    :catch_15
    move-exception v14

    .line 1270
    .restart local v14    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException InviteDelivered()"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 1279
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v14    # "e":Landroid/os/RemoteException;
    :sswitch_f
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1281
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "receive EVENT_REMOVE_CONFERENCE_RESULT"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsOnTerminated:Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Z

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_0

    .line 1288
    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_29

    .line 1289
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x1

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsAddRemoveParticipantsCommandOK:Z
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z

    .line 1292
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # operator++ for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1708(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)I

    .line 1293
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1700(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mPendingParticipantStatistics:I
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)I

    move-result v5

    if-ge v3, v5, :cond_2a

    .line 1294
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v3

    const/16 v5, 0xce

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v21

    .line 1296
    .restart local v21    # "result":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$700(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mPendingParticipantInfo:[Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1900(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)[Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I
    invoke-static {v7}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1700(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)I

    move-result v7

    aget-object v6, v6, v7

    move-object/from16 v0, v21

    invoke-virtual {v3, v5, v6, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->removeParticipants(ILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1299
    .end local v21    # "result":Landroid/os/Message;
    :cond_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_2b

    .line 1300
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsAddRemoveParticipantsCommandOK:Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1600(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 1302
    :try_start_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    new-instance v6, Lcom/android/ims/ImsReasonInfo;

    invoke-direct {v6}, Lcom/android/ims/ImsReasonInfo;-><init>()V

    invoke-interface {v3, v5, v6}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionRemoveParticipantsRequestFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_16

    .line 1316
    :cond_2b
    :goto_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x0

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsAddRemoveParticipantsCommandOK:Z
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z

    goto/16 :goto_0

    .line 1304
    :catch_16
    move-exception v14

    .line 1305
    .restart local v14    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException RemoveFailed()"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 1309
    .end local v14    # "e":Landroid/os/RemoteException;
    :cond_2c
    :try_start_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    invoke-interface {v3, v5}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionRemoveParticipantsRequestDelivered(Lcom/android/ims/internal/IImsCallSession;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_17

    goto :goto_10

    .line 1311
    :catch_17
    move-exception v14

    .line 1312
    .restart local v14    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException RemoveDelivered()"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 1320
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v14    # "e":Landroid/os/RemoteException;
    :sswitch_10
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1322
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    const/16 v23, 0x0

    .line 1324
    .local v23, "sipCauseCode":I
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "receive EVENT_GET_LAST_CALL_FAIL_CAUSE"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2d

    .line 1328
    new-instance v16, Lcom/android/ims/ImsReasonInfo;

    invoke-direct/range {v16 .. v16}, Lcom/android/ims/ImsReasonInfo;-><init>()V

    .line 1335
    .local v16, "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    :goto_11
    sget-object v3, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$2;->$SwitchMap$com$mediatek$internal$telephony$ims$ImsCallSessionProxy$CallErrorState:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallErrorState:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1400(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_0

    .line 1337
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1339
    :try_start_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    move-object/from16 v0, v16

    invoke-interface {v3, v5, v0}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionStartFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_18

    goto/16 :goto_0

    .line 1341
    :catch_18
    move-exception v14

    .line 1342
    .restart local v14    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException callSessionStartFailed()"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1330
    .end local v14    # "e":Landroid/os/RemoteException;
    .end local v16    # "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    :cond_2d
    iget-object v3, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v5, 0x0

    aget v13, v3, v5

    .line 1331
    .local v13, "causeCode":I
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->sipCauseFromCode(I)I

    move-result v23

    .line 1332
    new-instance v16, Lcom/android/ims/ImsReasonInfo;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-direct {v0, v1, v3}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .restart local v16    # "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    goto :goto_11

    .line 1347
    .end local v13    # "causeCode":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1349
    :try_start_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    move-object/from16 v0, v16

    invoke-interface {v3, v5, v0}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionTerminated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_19

    goto/16 :goto_0

    .line 1351
    :catch_19
    move-exception v14

    .line 1352
    .restart local v14    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException callSessionTerminated()"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1361
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v14    # "e":Landroid/os/RemoteException;
    .end local v16    # "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    .end local v23    # "sipCauseCode":I
    :sswitch_11
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1362
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object/from16 v24, v3

    check-cast v24, [I

    .line 1365
    .local v24, "sipMessage":[I
    if-eqz v24, :cond_0

    .line 1366
    const-string v3, "ImsCallSessionProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "receive sip cause ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x4

    aget v6, v24, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 705
    nop

    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_0
        0x67 -> :sswitch_7
        0x68 -> :sswitch_8
        0x69 -> :sswitch_10
        0xc9 -> :sswitch_9
        0xcb -> :sswitch_a
        0xcc -> :sswitch_b
        0xcd -> :sswitch_c
        0xce -> :sswitch_e
        0xcf -> :sswitch_f
        0xd0 -> :sswitch_11
        0xd1 -> :sswitch_9
        0xd2 -> :sswitch_d
    .end sparse-switch

    .line 744
    :pswitch_data_0
    .packed-switch 0x82
        :pswitch_0
    .end packed-switch

    .line 778
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_2
        0x6 -> :sswitch_3
        0x83 -> :sswitch_4
        0x84 -> :sswitch_5
        0x85 -> :sswitch_6
    .end sparse-switch

    .line 1335
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
