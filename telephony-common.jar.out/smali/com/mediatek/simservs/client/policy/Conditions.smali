.class public Lcom/mediatek/simservs/client/policy/Conditions;
.super Lcom/mediatek/simservs/xcap/XcapElement;
.source "Conditions.java"

# interfaces
.implements Lcom/mediatek/simservs/xcap/ConfigureType;


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "cp:conditions"

.field static final TAG_ANONYMOUS:Ljava/lang/String; = "anonymous"

.field static final TAG_BUSY:Ljava/lang/String; = "busy"

.field static final TAG_COMMUNICATION_DIVERTED:Ljava/lang/String; = "communication-diverted"

.field static final TAG_INTERNATIONAL:Ljava/lang/String; = "international"

.field static final TAG_INTERNATIONAL_EXHC:Ljava/lang/String; = "international-exHC"

.field static final TAG_MEDIA:Ljava/lang/String; = "media"

.field static final TAG_NOT_REACHABLE:Ljava/lang/String; = "not-reachable"

.field static final TAG_NOT_REGISTERED:Ljava/lang/String; = "not-registered"

.field static final TAG_NO_ANSWER:Ljava/lang/String; = "no-answer"

.field static final TAG_PRESENCE_STATUS:Ljava/lang/String; = "presence-status"

.field static final TAG_ROAMING:Ljava/lang/String; = "roaming"

.field static final TAG_RULE_DEACTIVATED:Ljava/lang/String; = "rule-deactivated"

.field static final TAG_TIME:Ljava/lang/String; = "time"


# instance fields
.field public mComprehendAnonymous:Z

.field public mComprehendBusy:Z

.field public mComprehendCommunicationDiverted:Z

.field public mComprehendInternational:Z

.field public mComprehendInternationalexHc:Z

.field public mComprehendNoAnswer:Z

.field public mComprehendNotReachable:Z

.field public mComprehendNotRegistered:Z

.field public mComprehendPresenceStatus:Z

.field public mComprehendRoaming:Z

.field public mComprehendRuleDeactivated:Z

.field public mComprehendTime:Ljava/lang/String;

.field public mMedias:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V
    .locals 1
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "credential"    # Lorg/apache/http/auth/Credentials;

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 39
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendBusy:Z

    .line 40
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNoAnswer:Z

    .line 41
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotReachable:Z

    .line 42
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotRegistered:Z

    .line 43
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRoaming:Z

    .line 44
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRuleDeactivated:Z

    .line 45
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternational:Z

    .line 46
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternationalexHc:Z

    .line 47
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendCommunicationDiverted:Z

    .line 48
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendPresenceStatus:Z

    .line 49
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendAnonymous:Z

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V
    .locals 1
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "credential"    # Lorg/apache/http/auth/Credentials;
    .param p5, "domElement"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 39
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendBusy:Z

    .line 40
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNoAnswer:Z

    .line 41
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotReachable:Z

    .line 42
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotRegistered:Z

    .line 43
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRoaming:Z

    .line 44
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRuleDeactivated:Z

    .line 45
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternational:Z

    .line 46
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternationalexHc:Z

    .line 47
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendCommunicationDiverted:Z

    .line 48
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendPresenceStatus:Z

    .line 49
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendAnonymous:Z

    .line 80
    invoke-virtual {p0, p5}, Lcom/mediatek/simservs/client/policy/Conditions;->instantiateFromXmlNode(Lorg/w3c/dom/Node;)V

    .line 81
    return-void
.end method


# virtual methods
.method public addAnonymous()V
    .locals 1

    .prologue
    .line 416
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendAnonymous:Z

    .line 417
    return-void
.end method

.method public addBusy()V
    .locals 1

    .prologue
    .line 336
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendBusy:Z

    .line 337
    return-void
.end method

.method public addCommunicationDiverted()V
    .locals 1

    .prologue
    .line 400
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendCommunicationDiverted:Z

    .line 401
    return-void
.end method

.method public addInternational()V
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternational:Z

    .line 385
    return-void
.end method

.method public addInternationalExHc()V
    .locals 1

    .prologue
    .line 392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternationalexHc:Z

    .line 393
    return-void
.end method

.method public addMedia(Ljava/lang/String;)V
    .locals 1
    .param p1, "media"    # Ljava/lang/String;

    .prologue
    .line 542
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    if-nez v0, :cond_0

    .line 543
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 546
    return-void
.end method

.method public addNoAnswer()V
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNoAnswer:Z

    .line 345
    return-void
.end method

.method public addNotReachable()V
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotReachable:Z

    .line 353
    return-void
.end method

.method public addNotRegistered()V
    .locals 1

    .prologue
    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotRegistered:Z

    .line 361
    return-void
.end method

.method public addPresenceStatus()V
    .locals 1

    .prologue
    .line 408
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendPresenceStatus:Z

    .line 409
    return-void
.end method

.method public addRoaming()V
    .locals 1

    .prologue
    .line 368
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRoaming:Z

    .line 369
    return-void
.end method

.method public addRuleDeactivated()V
    .locals 1

    .prologue
    .line 376
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRuleDeactivated:Z

    .line 377
    return-void
.end method

.method public addTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 524
    iput-object p1, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendTime:Ljava/lang/String;

    .line 525
    return-void
.end method

.method public clearConditions()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 557
    iput-boolean v1, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendBusy:Z

    .line 558
    iput-boolean v1, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNoAnswer:Z

    .line 559
    iput-boolean v1, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotReachable:Z

    .line 560
    iput-boolean v1, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotRegistered:Z

    .line 561
    iput-boolean v1, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRoaming:Z

    .line 562
    iput-boolean v1, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRuleDeactivated:Z

    .line 563
    iput-boolean v1, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternational:Z

    .line 564
    iput-boolean v1, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendCommunicationDiverted:Z

    .line 565
    iput-boolean v1, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendPresenceStatus:Z

    .line 566
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    if-nez v0, :cond_0

    .line 567
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 571
    iput-boolean v1, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendAnonymous:Z

    .line 572
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendTime:Ljava/lang/String;

    .line 573
    return-void
.end method

.method public comprehendAnonymous()Z
    .locals 1

    .prologue
    .line 515
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendAnonymous:Z

    return v0
.end method

.method public comprehendBusy()Z
    .locals 1

    .prologue
    .line 425
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendBusy:Z

    return v0
.end method

.method public comprehendCommunicationDiverted()Z
    .locals 1

    .prologue
    .line 497
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendCommunicationDiverted:Z

    return v0
.end method

.method public comprehendInternational()Z
    .locals 1

    .prologue
    .line 479
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternational:Z

    return v0
.end method

.method public comprehendInternationalExHc()Z
    .locals 1

    .prologue
    .line 488
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternationalexHc:Z

    return v0
.end method

.method public comprehendNoAnswer()Z
    .locals 1

    .prologue
    .line 434
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNoAnswer:Z

    return v0
.end method

.method public comprehendNotReachable()Z
    .locals 1

    .prologue
    .line 443
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotReachable:Z

    return v0
.end method

.method public comprehendNotRegistered()Z
    .locals 1

    .prologue
    .line 452
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotRegistered:Z

    return v0
.end method

.method public comprehendPresenceStatus()Z
    .locals 1

    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendPresenceStatus:Z

    return v0
.end method

.method public comprehendRoaming()Z
    .locals 1

    .prologue
    .line 461
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRoaming:Z

    return v0
.end method

.method public comprehendRuleDeactivated()Z
    .locals 1

    .prologue
    .line 470
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRuleDeactivated:Z

    return v0
.end method

.method public comprehendTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendTime:Ljava/lang/String;

    return-object v0
.end method

.method public getMedias()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 549
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    return-object v0
.end method

.method protected getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string v0, "cp:conditions"

    return-object v0
.end method

.method public instantiateFromXmlNode(Lorg/w3c/dom/Node;)V
    .locals 9
    .param p1, "domNode"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 90
    move-object v1, p1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 92
    .local v1, "domElement":Lorg/w3c/dom/Element;
    const-string v5, "busy"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 93
    .local v0, "conditionsNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_a

    .line 94
    iput-boolean v7, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendBusy:Z

    .line 102
    :cond_0
    :goto_0
    const-string v5, "no-answer"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 103
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_b

    .line 104
    iput-boolean v7, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNoAnswer:Z

    .line 112
    :cond_1
    :goto_1
    const-string v5, "not-reachable"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 113
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_c

    .line 114
    iput-boolean v7, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotReachable:Z

    .line 122
    :cond_2
    :goto_2
    const-string v5, "not-registered"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 123
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_d

    .line 124
    iput-boolean v7, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotRegistered:Z

    .line 132
    :cond_3
    :goto_3
    const-string v5, "roaming"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 133
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_e

    .line 134
    iput-boolean v7, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRoaming:Z

    .line 143
    :cond_4
    :goto_4
    const-string v5, "rule-deactivated"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 144
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_f

    .line 145
    iput-boolean v7, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRuleDeactivated:Z

    .line 155
    :cond_5
    :goto_5
    const-string v5, "international"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 156
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_10

    .line 157
    iput-boolean v7, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternational:Z

    .line 166
    :cond_6
    :goto_6
    const-string v5, "international-exHC"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 167
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_11

    .line 168
    iput-boolean v7, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternationalexHc:Z

    .line 177
    :cond_7
    :goto_7
    const-string v5, "communication-diverted"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 178
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_12

    .line 179
    iput-boolean v7, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendCommunicationDiverted:Z

    .line 188
    :cond_8
    :goto_8
    const-string v5, "presence-status"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 189
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_13

    .line 190
    iput-boolean v7, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendPresenceStatus:Z

    .line 198
    :cond_9
    :goto_9
    const-string v5, "media"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 199
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    .line 200
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_14

    .line 201
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v2, v5, :cond_16

    .line 202
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 203
    .local v3, "mediaElement":Lorg/w3c/dom/Element;
    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 96
    .end local v2    # "i":I
    .end local v3    # "mediaElement":Lorg/w3c/dom/Element;
    :cond_a
    const-string v5, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v6, "busy"

    invoke-interface {v1, v5, v6}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 97
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_0

    .line 98
    iput-boolean v7, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendBusy:Z

    goto/16 :goto_0

    .line 106
    :cond_b
    const-string v5, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v6, "no-answer"

    invoke-interface {v1, v5, v6}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 107
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_1

    .line 108
    iput-boolean v7, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNoAnswer:Z

    goto/16 :goto_1

    .line 116
    :cond_c
    const-string v5, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v6, "not-reachable"

    invoke-interface {v1, v5, v6}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 117
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_2

    .line 118
    iput-boolean v7, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotReachable:Z

    goto/16 :goto_2

    .line 126
    :cond_d
    const-string v5, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v6, "not-registered"

    invoke-interface {v1, v5, v6}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 127
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_3

    .line 128
    iput-boolean v7, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotRegistered:Z

    goto/16 :goto_3

    .line 136
    :cond_e
    const-string v5, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v6, "roaming"

    invoke-interface {v1, v5, v6}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 137
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_4

    .line 138
    iput-boolean v7, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRoaming:Z

    goto/16 :goto_4

    .line 147
    :cond_f
    const-string v5, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v6, "rule-deactivated"

    invoke-interface {v1, v5, v6}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 149
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_5

    .line 150
    iput-boolean v7, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRuleDeactivated:Z

    goto/16 :goto_5

    .line 159
    :cond_10
    const-string v5, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v6, "international"

    invoke-interface {v1, v5, v6}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 160
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_6

    .line 161
    iput-boolean v7, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternational:Z

    goto/16 :goto_6

    .line 170
    :cond_11
    const-string v5, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v6, "international-exHC"

    invoke-interface {v1, v5, v6}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 172
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_7

    .line 173
    iput-boolean v7, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternationalexHc:Z

    goto/16 :goto_7

    .line 181
    :cond_12
    const-string v5, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v6, "communication-diverted"

    invoke-interface {v1, v5, v6}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 183
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_8

    .line 184
    iput-boolean v7, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendCommunicationDiverted:Z

    goto/16 :goto_8

    .line 192
    :cond_13
    const-string v5, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v6, "presence-status"

    invoke-interface {v1, v5, v6}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 193
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_9

    .line 194
    iput-boolean v7, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendPresenceStatus:Z

    goto/16 :goto_9

    .line 206
    :cond_14
    const-string v5, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v6, "media"

    invoke-interface {v1, v5, v6}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 207
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_15

    .line 208
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_b
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v2, v5, :cond_16

    .line 209
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 210
    .restart local v3    # "mediaElement":Lorg/w3c/dom/Element;
    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 213
    .end local v2    # "i":I
    .end local v3    # "mediaElement":Lorg/w3c/dom/Element;
    :cond_15
    const-string v5, "ss:media"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 214
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_16

    .line 215
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_c
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v2, v5, :cond_16

    .line 216
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 217
    .restart local v3    # "mediaElement":Lorg/w3c/dom/Element;
    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 223
    .end local v2    # "i":I
    .end local v3    # "mediaElement":Lorg/w3c/dom/Element;
    :cond_16
    const-string v5, "anonymous"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 224
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_19

    .line 225
    iput-boolean v7, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendAnonymous:Z

    .line 233
    :cond_17
    :goto_d
    const-string v5, "time"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 234
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_1a

    .line 235
    invoke-interface {v0, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 236
    .local v4, "timeElement":Lorg/w3c/dom/Element;
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendTime:Ljava/lang/String;

    .line 245
    .end local v4    # "timeElement":Lorg/w3c/dom/Element;
    :cond_18
    :goto_e
    return-void

    .line 227
    :cond_19
    const-string v5, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v6, "anonymous"

    invoke-interface {v1, v5, v6}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 228
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_17

    .line 229
    iput-boolean v7, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendAnonymous:Z

    goto :goto_d

    .line 238
    :cond_1a
    const-string v5, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v6, "time"

    invoke-interface {v1, v5, v6}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 239
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_18

    .line 240
    invoke-interface {v0, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 241
    .restart local v4    # "timeElement":Lorg/w3c/dom/Element;
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendTime:Ljava/lang/String;

    goto :goto_e
.end method

.method public toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 5
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 254
    const-string v4, "cp:conditions"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 256
    .local v1, "conditionsElement":Lorg/w3c/dom/Element;
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 257
    const-string v4, "busy"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 258
    .local v0, "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 261
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 262
    const-string v4, "no-answer"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 263
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 266
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 267
    const-string v4, "not-reachable"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 268
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 271
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 272
    const-string v4, "not-registered"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 273
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 276
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 277
    const-string v4, "roaming"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 278
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 281
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_4
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 282
    const-string v4, "rule-deactivated"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 283
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 286
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_5
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 287
    const-string v4, "international"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 288
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 291
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_6
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternationalExHc()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 292
    const-string v4, "international-exHC"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 293
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 296
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_7
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendCommunicationDiverted()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 297
    const-string v4, "communication-diverted"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 298
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 301
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_8
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendPresenceStatus()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 302
    const-string v4, "presence-status"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 303
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 306
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_9
    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    if-eqz v4, :cond_a

    .line 307
    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_a

    .line 308
    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 309
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 310
    const-string v4, "media"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 311
    .local v3, "ruleElement":Lorg/w3c/dom/Element;
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 312
    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 317
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "ruleElement":Lorg/w3c/dom/Element;
    :cond_a
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendAnonymous()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 318
    const-string v4, "anonymous"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 319
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 322
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_b
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendTime()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    .line 323
    const-string v4, "time"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 324
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendTime:Ljava/lang/String;

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 325
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 328
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_c
    return-object v1
.end method
