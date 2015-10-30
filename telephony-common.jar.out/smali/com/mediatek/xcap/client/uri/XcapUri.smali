.class public Lcom/mediatek/xcap/client/uri/XcapUri;
.super Ljava/lang/Object;
.source "XcapUri.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;,
        Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;
    }
.end annotation


# static fields
.field private static final PATH_SEPARATOR:C = '/'

.field private static final RESOURCE_SELECTOR_SEPARATOR:Ljava/lang/String; = "/~~/"


# instance fields
.field private mDocumentSelector:Ljava/lang/String;

.field private mNodeSelector:Ljava/lang/String;

.field private mXcapRoot:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri;->mXcapRoot:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri;->mDocumentSelector:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri;->mNodeSelector:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public static encodePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 403
    if-nez p0, :cond_0

    .line 404
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "string to encode is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_ABS_PATH:Ljava/util/BitSet;

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/commons/codec/net/URLCodec;->encodeUrl(Ljava/util/BitSet;[B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public getDocumentSelector()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri;->mDocumentSelector:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeSelector()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri;->mNodeSelector:Ljava/lang/String;

    return-object v0
.end method

.method public getXcapRoot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri;->mXcapRoot:Ljava/lang/String;

    return-object v0
.end method

.method public setDocumentSelector(Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;)Lcom/mediatek/xcap/client/uri/XcapUri;
    .locals 1
    .param p1, "documentSelector"    # Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p1}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/xcap/client/uri/XcapUri;->setDocumentSelector(Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri;

    .line 106
    return-object p0
.end method

.method public setDocumentSelector(Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri;
    .locals 2
    .param p1, "documentSelector"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "document selector must not start with /"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    iput-object p1, p0, Lcom/mediatek/xcap/client/uri/XcapUri;->mDocumentSelector:Ljava/lang/String;

    .line 122
    return-object p0
.end method

.method public setNodeSelector(Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;)Lcom/mediatek/xcap/client/uri/XcapUri;
    .locals 1
    .param p1, "nodeSelector"    # Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-virtual {p1}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/xcap/client/uri/XcapUri;->setNodeSelector(Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri;

    .line 139
    return-object p0
.end method

.method public setNodeSelector(Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri;
    .locals 2
    .param p1, "nodeSelector"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri;->mDocumentSelector:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "document selector must not start with /"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_0
    iput-object p1, p0, Lcom/mediatek/xcap/client/uri/XcapUri;->mNodeSelector:Ljava/lang/String;

    .line 155
    return-object p0
.end method

.method public setXcapRoot(Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri;
    .locals 2
    .param p1, "xcapRoot"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "xcap root must end with /"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    iput-object p1, p0, Lcom/mediatek/xcap/client/uri/XcapUri;->mXcapRoot:Ljava/lang/String;

    .line 89
    return-object p0
.end method

.method public toURI()Ljava/net/URI;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/xcap/client/uri/XcapUri;->mXcapRoot:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/mediatek/xcap/client/uri/XcapUri;->mDocumentSelector:Ljava/lang/String;

    invoke-static {v1}, Lcom/mediatek/xcap/client/uri/XcapUri;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    iget-object v1, p0, Lcom/mediatek/xcap/client/uri/XcapUri;->mNodeSelector:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 168
    const-string v1, "/~~/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/xcap/client/uri/XcapUri;->mNodeSelector:Ljava/lang/String;

    invoke-static {v2}, Lcom/mediatek/xcap/client/uri/XcapUri;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :cond_0
    new-instance v1, Ljava/net/URI;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v1
.end method
