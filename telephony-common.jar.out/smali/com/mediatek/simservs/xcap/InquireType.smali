.class public abstract Lcom/mediatek/simservs/xcap/InquireType;
.super Lcom/mediatek/simservs/xcap/XcapElement;
.source "InquireType.java"


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V
    .locals 0
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "credential"    # Lorg/apache/http/auth/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    const/16 v14, 0x199

    .line 52
    iget-object v9, p0, Lcom/mediatek/simservs/xcap/InquireType;->mNetwork:Landroid/net/Network;

    if-eqz v9, :cond_4

    .line 53
    new-instance v8, Lcom/mediatek/xcap/client/XcapClient;

    iget-object v9, p0, Lcom/mediatek/simservs/xcap/InquireType;->mNetwork:Landroid/net/Network;

    invoke-direct {v8, v9}, Lcom/mediatek/xcap/client/XcapClient;-><init>(Landroid/net/Network;)V

    .line 58
    .local v8, "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :goto_0
    const/4 v6, 0x0

    .line 59
    .local v6, "response":Lorg/apache/http/HttpResponse;
    const/4 v7, 0x0

    .line 61
    .local v7, "ret":Ljava/lang/String;
    const/4 v3, 0x0

    .line 64
    .local v3, "headers":[Lorg/apache/http/Header;
    :try_start_0
    iget-object v9, p0, Lcom/mediatek/simservs/xcap/InquireType;->mIntendedId:Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 65
    const/4 v9, 0x1

    new-array v3, v9, [Lorg/apache/http/Header;

    .line 66
    const/4 v9, 0x0

    new-instance v10, Lorg/apache/http/message/BasicHeader;

    const-string v11, "X-3GPP-Intended-Identity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/mediatek/simservs/xcap/InquireType;->mIntendedId:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v10, v3, v9

    .line 68
    :cond_0
    iget-object v9, p0, Lcom/mediatek/simservs/xcap/InquireType;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-virtual {v8, v9}, Lcom/mediatek/xcap/client/XcapClient;->setAuthenticationCredentials(Lorg/apache/http/auth/Credentials;)V

    .line 70
    invoke-virtual {p0}, Lcom/mediatek/simservs/xcap/InquireType;->getNodeUri()Ljava/net/URI;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    .line 71
    .local v5, "nodeUri":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/xcap/client/XcapDebugParam;->getInstance()Lcom/mediatek/xcap/client/XcapDebugParam;

    move-result-object v0

    .line 73
    .local v0, "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    invoke-virtual {v0}, Lcom/mediatek/xcap/client/XcapDebugParam;->getEnableSimservQueryWhole()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 74
    const/4 v9, 0x0

    const-string v10, "simservs"

    invoke-virtual {v5, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    const-string v11, "simservs"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 78
    :cond_1
    const-string v9, "SimservType"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "xcap.protocol="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "xcap.protocol"

    invoke-static {v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v9, "http"

    const-string v10, "xcap.protocol"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "https"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 81
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "http"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x5

    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 84
    :cond_2
    new-instance v9, Ljava/net/URI;

    invoke-direct {v9, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9, v3}, Lcom/mediatek/xcap/client/XcapClient;->get(Ljava/net/URI;[Lorg/apache/http/Header;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 86
    if-eqz v6, :cond_3

    .line 87
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_5

    .line 88
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 89
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 91
    .local v4, "is":Ljava/io/InputStream;
    invoke-virtual {p0, v4}, Lcom/mediatek/simservs/xcap/InquireType;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 123
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    .end local v4    # "is":Ljava/io/InputStream;
    :cond_3
    invoke-virtual {v8}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    .line 125
    .end local v0    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .end local v5    # "nodeUri":Ljava/lang/String;
    :goto_1
    return-object v7

    .line 55
    .end local v3    # "headers":[Lorg/apache/http/Header;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .end local v7    # "ret":Ljava/lang/String;
    .end local v8    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :cond_4
    new-instance v8, Lcom/mediatek/xcap/client/XcapClient;

    invoke-direct {v8}, Lcom/mediatek/xcap/client/XcapClient;-><init>()V

    .restart local v8    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    goto/16 :goto_0

    .line 92
    .restart local v0    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .restart local v3    # "headers":[Lorg/apache/http/Header;
    .restart local v5    # "nodeUri":Ljava/lang/String;
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    .restart local v7    # "ret":Ljava/lang/String;
    :cond_5
    :try_start_1
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    if-ne v9, v14, :cond_8

    .line 93
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 94
    .restart local v2    # "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 96
    .restart local v4    # "is":Ljava/io/InputStream;
    if-eqz v4, :cond_7

    .line 97
    const-string v9, "true"

    const-string v10, "xcap.handl409"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 99
    const/4 v7, 0x0

    .line 100
    new-instance v9, Lcom/mediatek/simservs/xcap/XcapException;

    const/16 v10, 0x199

    const-string v11, "phrase"

    invoke-virtual {p0, v11, v4}, Lcom/mediatek/simservs/xcap/InquireType;->parse409ErrorMessage(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(ILjava/lang/String;)V

    throw v9
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    .end local v0    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "nodeUri":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    invoke-virtual {v8}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto :goto_1

    .line 103
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .restart local v2    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "nodeUri":Ljava/lang/String;
    :cond_6
    const/4 v7, 0x0

    .line 104
    :try_start_3
    new-instance v9, Lcom/mediatek/simservs/xcap/XcapException;

    const/16 v10, 0x199

    invoke-direct {v9, v10}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v9
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 117
    .end local v0    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "nodeUri":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 118
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 119
    new-instance v9, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v9, v1}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(Ljava/io/IOException;)V

    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 123
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    invoke-virtual {v8}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    throw v9

    .line 107
    .restart local v0    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .restart local v2    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "nodeUri":Ljava/lang/String;
    :cond_7
    const/4 v7, 0x0

    .line 108
    :try_start_5
    new-instance v9, Lcom/mediatek/simservs/xcap/XcapException;

    const/16 v10, 0x199

    invoke-direct {v9, v10}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v9
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 120
    .end local v0    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "nodeUri":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 121
    .local v1, "e":Ljava/net/URISyntaxException;
    :try_start_6
    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 123
    invoke-virtual {v8}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto :goto_1

    .line 111
    .end local v1    # "e":Ljava/net/URISyntaxException;
    .restart local v0    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .restart local v5    # "nodeUri":Ljava/lang/String;
    :cond_8
    const/4 v7, 0x0

    .line 112
    :try_start_7
    new-instance v9, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    invoke-direct {v9, v10}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v9
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method
