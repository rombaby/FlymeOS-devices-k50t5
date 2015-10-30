.class Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;
.super Ljava/lang/Object;
.source "RuimRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/RuimRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfCsimMipUppLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/RuimRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V
    .locals 0

    .prologue
    .line 561
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/uicc/RuimRecords;
    .param p2, "x1"    # Lcom/android/internal/telephony/uicc/RuimRecords$1;

    .prologue
    .line 561
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    return-void
.end method


# virtual methods
.method checkLengthLegal(II)Z
    .locals 3
    .param p1, "length"    # I
    .param p2, "expectLength"    # I

    .prologue
    .line 568
    if-ge p1, p2, :cond_0

    .line 569
    const-string v0, "RuimRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CSIM MIPUPP format error, length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "expected length at least ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const/4 v0, 0x0

    .line 573
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getEfName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 564
    const-string v0, "EF_CSIM_MIPUPP"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 17
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 580
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, [B

    move-object v2, v14

    check-cast v2, [B

    .line 582
    .local v2, "data":[B
    array-length v14, v2

    const/4 v15, 0x1

    if-ge v14, v15, :cond_1

    .line 583
    const-string v14, "RuimRecords"

    const-string v15, "MIPUPP read error"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :cond_0
    :goto_0
    return-void

    .line 587
    :cond_1
    new-instance v1, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v1, v2}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 589
    .local v1, "bitStream":Lcom/android/internal/util/BitwiseInputStream;
    const/16 v14, 0x8

    :try_start_0
    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    .line 591
    .local v6, "mipUppLength":I
    shl-int/lit8 v6, v6, 0x3

    .line 593
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 597
    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v13

    .line 598
    .local v13, "retryInfoInclude":I
    add-int/lit8 v6, v6, -0x1

    .line 600
    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    .line 601
    const/16 v14, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 604
    const/16 v14, 0xb

    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 606
    add-int/lit8 v6, v6, -0xb

    .line 609
    :cond_2
    const/4 v14, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 612
    const/4 v14, 0x4

    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v12

    .line 613
    .local v12, "numNai":I
    add-int/lit8 v6, v6, -0x4

    .line 616
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_1
    if-ge v4, v12, :cond_0

    .line 617
    const/4 v14, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 620
    const/4 v14, 0x4

    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v10

    .line 621
    .local v10, "naiEntryIndex":I
    add-int/lit8 v6, v6, -0x4

    .line 623
    const/16 v14, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 626
    const/16 v14, 0x8

    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v11

    .line 627
    .local v11, "naiLength":I
    add-int/lit8 v6, v6, -0x8

    .line 629
    if-nez v10, :cond_4

    .line 631
    shl-int/lit8 v14, v11, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 634
    new-array v9, v11, [C

    .line 635
    .local v9, "naiCharArray":[C
    const/4 v5, 0x0

    .local v5, "index1":I
    :goto_2
    if-ge v5, v11, :cond_3

    .line 636
    const/16 v14, 0x8

    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v14

    and-int/lit16 v14, v14, 0xff

    int-to-char v14, v14

    aput-char v14, v9, v5

    .line 635
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 638
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v9}, Ljava/lang/String;-><init>([C)V

    # setter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mNai:Ljava/lang/String;
    invoke-static {v14, v15}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$902(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)Ljava/lang/String;

    .line 639
    const-string v14, "RuimRecords"

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 640
    const-string v14, "RuimRecords"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "MIPUPP Nai = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    move-object/from16 v16, v0

    # getter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mNai:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$900(Lcom/android/internal/telephony/uicc/RuimRecords;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 678
    .end local v4    # "index":I
    .end local v5    # "index1":I
    .end local v6    # "mipUppLength":I
    .end local v9    # "naiCharArray":[C
    .end local v10    # "naiEntryIndex":I
    .end local v11    # "naiLength":I
    .end local v12    # "numNai":I
    .end local v13    # "retryInfoInclude":I
    :catch_0
    move-exception v3

    .line 679
    .local v3, "e":Ljava/lang/Exception;
    const-string v14, "RuimRecords"

    const-string v15, "MIPUPP read Exception error!"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 645
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "index":I
    .restart local v6    # "mipUppLength":I
    .restart local v10    # "naiEntryIndex":I
    .restart local v11    # "naiLength":I
    .restart local v12    # "numNai":I
    .restart local v13    # "retryInfoInclude":I
    :cond_4
    shl-int/lit8 v14, v11, 0x3

    add-int/lit8 v14, v14, 0x66

    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 648
    shl-int/lit8 v14, v11, 0x3

    add-int/lit8 v14, v14, 0x65

    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 649
    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    .line 650
    .local v7, "mnAaaSpiIndicator":I
    shl-int/lit8 v14, v11, 0x3

    add-int/lit8 v14, v14, 0x66

    sub-int/2addr v6, v14

    .line 652
    const/4 v14, 0x1

    if-ne v7, v14, :cond_5

    .line 653
    const/16 v14, 0x20

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 656
    const/16 v14, 0x20

    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 657
    add-int/lit8 v6, v6, -0x20

    .line 661
    :cond_5
    const/4 v14, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 664
    const/4 v14, 0x4

    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 665
    add-int/lit8 v6, v6, -0x4

    .line 666
    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    .line 667
    .local v8, "mnHaSpiIndicator":I
    add-int/lit8 v6, v6, -0x1

    .line 669
    const/4 v14, 0x1

    if-ne v8, v14, :cond_6

    .line 670
    const/16 v14, 0x20

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 673
    const/16 v14, 0x20

    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 674
    add-int/lit8 v6, v6, -0x20

    .line 616
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1
.end method
