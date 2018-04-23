.class public final Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;
.super Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;
.source "PersistableUpload.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final TYPE:Ljava/lang/String; = "upload"


# instance fields
.field private final bucketName:Ljava/lang/String;

.field private final file:Ljava/lang/String;

.field private final key:Ljava/lang/String;

.field private final multipartUploadId:Ljava/lang/String;

.field private final mutlipartUploadThreshold:J

.field private final partSize:J

.field private final pauseType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    const-wide/16 v7, -0x1

    move-object v0, p0

    .line 57
    invoke-direct/range {v0 .. v8}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;-><init>()V

    const-string v0, "upload"

    .line 35
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->pauseType:Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->bucketName:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->key:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->file:Ljava/lang/String;

    .line 70
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->multipartUploadId:Ljava/lang/String;

    .line 71
    iput-wide p5, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->partSize:J

    .line 72
    iput-wide p7, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->mutlipartUploadThreshold:J

    return-void
.end method


# virtual methods
.method getBucketName()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method getFile()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->file:Ljava/lang/String;

    return-object v0
.end method

.method getKey()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->key:Ljava/lang/String;

    return-object v0
.end method

.method getMultipartUploadId()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->multipartUploadId:Ljava/lang/String;

    return-object v0
.end method

.method getMutlipartUploadThreshold()J
    .locals 2

    .line 108
    iget-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->mutlipartUploadThreshold:J

    return-wide v0
.end method

.method getPartSize()J
    .locals 2

    .line 100
    iget-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->partSize:J

    return-wide v0
.end method

.method getPauseType()Ljava/lang/String;
    .locals 1

    const-string v0, "upload"

    return-object v0
.end method

.method public serialize()Ljava/lang/String;
    .locals 4

    .line 125
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 126
    invoke-static {v0}, Lcom/amazonaws/util/json/JsonUtils;->getJsonWriter(Ljava/io/Writer;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v1

    .line 128
    :try_start_0
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v1

    const-string v2, "pauseType"

    .line 129
    invoke-interface {v1, v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v1

    const-string v2, "upload"

    invoke-interface {v1, v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v1

    const-string v2, "bucketName"

    .line 130
    invoke-interface {v1, v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->bucketName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v1

    const-string v2, "key"

    .line 131
    invoke-interface {v1, v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->key:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v1

    const-string v2, "file"

    .line 132
    invoke-interface {v1, v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->file:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v1

    const-string v2, "multipartUploadId"

    .line 133
    invoke-interface {v1, v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->multipartUploadId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v1

    const-string v2, "partSize"

    .line 134
    invoke-interface {v1, v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v1

    iget-wide v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->partSize:J

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(J)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v1

    const-string v2, "mutlipartUploadThreshold"

    .line 135
    invoke-interface {v1, v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v1

    iget-wide v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->mutlipartUploadThreshold:J

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(J)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v1

    .line 136
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 138
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
