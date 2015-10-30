.class public Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;
.super Ljava/lang/Object;
.source "XcapUri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/xcap/client/uri/XcapUri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XcapDocumentSelector"
.end annotation


# static fields
.field private static final XCAP_GLOBAL_PATH:Ljava/lang/String; = "global"

.field private static final XCAP_USER_PATH:Ljava/lang/String; = "users"


# instance fields
.field private mAuid:Ljava/lang/String;

.field private mDocumentName:Ljava/lang/String;

.field private mDocumentSelector:Ljava/lang/StringBuilder;

.field private mXui:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "auid"    # Ljava/lang/String;
    .param p2, "documentName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;->mDocumentSelector:Ljava/lang/StringBuilder;

    .line 184
    iput-object v2, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;->mAuid:Ljava/lang/String;

    .line 185
    iput-object v2, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;->mXui:Ljava/lang/String;

    .line 186
    iput-object v2, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;->mDocumentName:Ljava/lang/String;

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .local v0, "documentSelector":Ljava/lang/StringBuilder;
    iput-object p1, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;->mAuid:Ljava/lang/String;

    .line 227
    iput-object p2, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;->mDocumentName:Ljava/lang/String;

    .line 229
    invoke-virtual {p0, p1}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;->queryPath(Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;

    move-result-object v1

    const-string v2, "global"

    invoke-virtual {v1, v2}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;->queryPath(Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;->queryPath(Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;

    .line 230
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "auid"    # Ljava/lang/String;
    .param p2, "xui"    # Ljava/lang/String;
    .param p3, "documentName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;->mDocumentSelector:Ljava/lang/StringBuilder;

    .line 184
    iput-object v1, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;->mAuid:Ljava/lang/String;

    .line 185
    iput-object v1, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;->mXui:Ljava/lang/String;

    .line 186
    iput-object v1, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;->mDocumentName:Ljava/lang/String;

    .line 210
    iput-object p1, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;->mAuid:Ljava/lang/String;

    .line 211
    iput-object p2, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;->mXui:Ljava/lang/String;

    .line 212
    iput-object p3, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;->mDocumentName:Ljava/lang/String;

    .line 214
    invoke-virtual {p0, p1}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;->queryPath(Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;

    move-result-object v0

    const-string v1, "users"

    invoke-virtual {v0, v1}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;->queryPath(Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;->queryPath(Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;->queryPath(Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;

    .line 215
    return-void
.end method


# virtual methods
.method public queryPath(Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;
    .locals 2
    .param p1, "newSegment"    # Ljava/lang/String;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;->mDocumentSelector:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;->mDocumentSelector:Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;->mDocumentSelector:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;->mDocumentSelector:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
