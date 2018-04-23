.class public final Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;
.super Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;
.source "PersistableDownload.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final TYPE:Ljava/lang/String; = "download"


# instance fields
.field private final bucketName:Ljava/lang/String;

.field private final file:Ljava/lang/String;

.field private final isRequesterPays:Z

.field private final key:Ljava/lang/String;

.field private final pauseType:Ljava/lang/String;

.field private final range:[J

.field private final responseHeaders:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

.field private final versionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 69
    invoke-direct/range {v0 .. v7}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[JLcom/amazonaws/services/s3/model/ResponseHeaderOverrides;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[JLcom/amazonaws/services/s3/model/ResponseHeaderOverrides;ZLjava/lang/String;)V
    .locals 1

    .line 79
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;-><init>()V

    const-string v0, "download"

    .line 37
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->pauseType:Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->bucketName:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->key:Ljava/lang/String;

    .line 82
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->versionId:Ljava/lang/String;

    if-nez p4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p4}, [J->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    :goto_0
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->range:[J

    .line 84
    iput-object p5, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->responseHeaders:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    .line 85
    iput-boolean p6, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->isRequesterPays:Z

    .line 86
    iput-object p7, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->file:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getBucketName()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method getFile()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->file:Ljava/lang/String;

    return-object v0
.end method

.method getKey()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->key:Ljava/lang/String;

    return-object v0
.end method

.method getPauseType()Ljava/lang/String;
    .locals 1

    const-string v0, "download"

    return-object v0
.end method

.method getRange()[J
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->range:[J

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->range:[J

    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    :goto_0
    return-object v0
.end method

.method getResponseHeaders()Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->responseHeaders:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    return-object v0
.end method

.method getVersionId()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->versionId:Ljava/lang/String;

    return-object v0
.end method

.method isRequesterPays()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->isRequesterPays:Z

    return v0
.end method

.method public serialize()Ljava/lang/String;
    .locals 7

    .line 145
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 146
    invoke-static {v0}, Lcom/amazonaws/util/json/JsonUtils;->getJsonWriter(Ljava/io/Writer;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v1

    .line 148
    :try_start_0
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    const-string v3, "pauseType"

    .line 149
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    const-string v3, "download"

    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    const-string v3, "bucketName"

    .line 150
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->bucketName:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    const-string v3, "key"

    .line 151
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->key:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    const-string v3, "file"

    .line 152
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->file:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    const-string v3, "versionId"

    .line 153
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->versionId:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    const-string v3, "isRequesterPays"

    .line 154
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    iget-boolean v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->isRequesterPays:Z

    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Z)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 155
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->range:[J

    if-eqz v2, :cond_1

    const-string v2, "range"

    .line 156
    invoke-interface {v1, v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginArray()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 157
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->range:[J

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-wide v5, v2, v4

    .line 158
    invoke-interface {v1, v5, v6}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(J)Lcom/amazonaws/util/json/AwsJsonWriter;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 160
    :cond_0
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->endArray()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 162
    :cond_1
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->responseHeaders:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    if-eqz v2, :cond_2

    const-string v2, "responseHeaders"

    .line 163
    invoke-interface {v1, v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    const-string v3, "contentType"

    .line 164
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->responseHeaders:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    const-string v3, "contentLanguage"

    .line 165
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->responseHeaders:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getContentLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    const-string v3, "expires"

    .line 166
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->responseHeaders:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getExpires()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    const-string v3, "cacheControl"

    .line 167
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->responseHeaders:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getCacheControl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    const-string v3, "contentDisposition"

    .line 168
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->responseHeaders:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getContentDisposition()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    const-string v3, "contentEncoding"

    .line 169
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->responseHeaders:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getContentEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    .line 170
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 172
    :cond_2
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 174
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
