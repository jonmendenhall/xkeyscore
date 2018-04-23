.class public Lcom/amazonaws/services/s3/internal/ServiceUtils;
.super Ljava/lang/Object;
.source "ServiceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/internal/ServiceUtils$RetryableS3DownloadTask;
    }
.end annotation


# static fields
.field public static final APPEND_MODE:Z = true

.field protected static final DATE_UTILS:Lcom/amazonaws/util/DateUtils;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DEAFAULT_BYTE_SIZE:I = 0x2800

.field public static final OVERWRITE_MODE:Z = false

.field private static final log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const-class v0, Lcom/amazonaws/services/s3/internal/ServiceUtils;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/internal/ServiceUtils;->log:Lorg/apache/commons/logging/Log;

    .line 70
    new-instance v0, Lcom/amazonaws/util/DateUtils;

    invoke-direct {v0}, Lcom/amazonaws/util/DateUtils;-><init>()V

    sput-object v0, Lcom/amazonaws/services/s3/internal/ServiceUtils;->DATE_UTILS:Lcom/amazonaws/util/DateUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertRequestToUrl(Lcom/amazonaws/Request;)Ljava/net/URL;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;)",
            "Ljava/net/URL;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 169
    invoke-static {p0, v0}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->convertRequestToUrl(Lcom/amazonaws/Request;Z)Ljava/net/URL;

    move-result-object p0

    return-object p0
.end method

.method public static convertRequestToUrl(Lcom/amazonaws/Request;Z)Ljava/net/URL;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;Z)",
            "Ljava/net/URL;"
        }
    .end annotation

    .line 187
    invoke-interface {p0}, Lcom/amazonaws/Request;->getResourcePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/internal/S3HttpUtils;->urlEncode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string p1, "/"

    .line 192
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 200
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "(?<=/)/"

    const-string v2, "%2F"

    .line 201
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/amazonaws/Request;->getEndpoint()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 205
    invoke-interface {p0}, Lcom/amazonaws/Request;->getParameters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move v1, v3

    goto :goto_1

    .line 210
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 213
    :goto_1
    invoke-interface {p0}, Lcom/amazonaws/Request;->getParameters()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 214
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v3}, Lcom/amazonaws/services/s3/internal/S3HttpUtils;->urlEncode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 218
    :cond_2
    :try_start_0
    new-instance p0, Ljava/net/URL;

    invoke-direct {p0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 220
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to convert request to well formed URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {p0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static downloadObjectToFile(Lcom/amazonaws/services/s3/model/S3Object;Ljava/io/File;ZZ)V
    .locals 4

    .line 267
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 269
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const/4 v0, 0x0

    .line 274
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p3, 0x2800

    .line 276
    :try_start_1
    new-array p3, p3, [B

    .line 278
    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_1

    const/4 v3, 0x0

    .line 279
    invoke-virtual {v1, p3, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 287
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 289
    :catch_0
    sget-object p3, Lcom/amazonaws/services/s3/internal/ServiceUtils;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Caught exception. Ignoring."

    invoke-interface {p3, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 292
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object p3

    invoke-virtual {p3}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 294
    :catch_1
    sget-object p3, Lcom/amazonaws/services/s3/internal/ServiceUtils;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Caught exception. Ignoring."

    invoke-interface {p3, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 303
    :goto_2
    :try_start_4
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p3

    invoke-virtual {p3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getETag()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->isMultipartUploadETag(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 304
    new-instance p3, Ljava/io/FileInputStream;

    invoke-direct {p3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {p3}, Lcom/amazonaws/util/Md5Utils;->computeMD5Hash(Ljava/io/InputStream;)[B

    move-result-object p3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 305
    :try_start_5
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getETag()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazonaws/util/BinaryUtils;->fromHex(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-object v0, p0

    goto :goto_4

    :catch_2
    move-exception p0

    goto :goto_3

    :cond_2
    move-object p3, v0

    goto :goto_4

    :catch_3
    move-exception p0

    move-object p3, v0

    .line 308
    :goto_3
    sget-object v1, Lcom/amazonaws/services/s3/internal/ServiceUtils;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to calculate MD5 hash to validate download: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_4
    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    if-eqz v0, :cond_3

    .line 312
    invoke-static {p3, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-nez p0, :cond_3

    .line 313
    new-instance p0, Lcom/amazonaws/AmazonClientException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to verify integrity of data download.  Client calculated content hash didn\'t match hash calculated by Amazon S3.  The data stored in \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' may be corrupt."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_6

    :catch_4
    move-exception p1

    move-object v0, v1

    goto :goto_5

    :catchall_1
    move-exception p1

    goto :goto_6

    :catch_5
    move-exception p1

    .line 282
    :goto_5
    :try_start_6
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->abort()V

    .line 283
    new-instance p2, Lcom/amazonaws/AmazonClientException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to store object contents to disk: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 287
    :goto_6
    :try_start_7
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_7

    .line 289
    :catch_6
    sget-object p2, Lcom/amazonaws/services/s3/internal/ServiceUtils;->log:Lorg/apache/commons/logging/Log;

    const-string p3, "Caught exception. Ignoring."

    invoke-interface {p2, p3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 292
    :goto_7
    :try_start_8
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_8

    .line 294
    :catch_7
    sget-object p0, Lcom/amazonaws/services/s3/internal/ServiceUtils;->log:Lorg/apache/commons/logging/Log;

    const-string p2, "Caught exception. Ignoring."

    invoke-interface {p0, p2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 295
    :goto_8
    throw p1
.end method

.method public static formatIso8601Date(Ljava/util/Date;)Ljava/lang/String;
    .locals 0

    .line 87
    invoke-static {p0}, Lcom/amazonaws/util/DateUtils;->formatISO8601Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatRfc822Date(Ljava/util/Date;)Ljava/lang/String;
    .locals 0

    .line 105
    invoke-static {p0}, Lcom/amazonaws/util/DateUtils;->formatRFC822Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isMultipartUploadETag(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "-"

    .line 117
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static join(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    .line 238
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 243
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;
    .locals 0

    .line 78
    invoke-static {p0}, Lcom/amazonaws/util/DateUtils;->parseISO8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static parseRfc822Date(Ljava/lang/String;)Ljava/util/Date;
    .locals 0

    .line 96
    invoke-static {p0}, Lcom/amazonaws/util/DateUtils;->parseRFC822Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static removeQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 146
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\""

    .line 147
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    const-string v0, "\""

    .line 150
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 151
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static retryableDownloadS3ObjectToFile(Ljava/io/File;Lcom/amazonaws/services/s3/internal/ServiceUtils$RetryableS3DownloadTask;Z)Lcom/amazonaws/services/s3/model/S3Object;
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 364
    :cond_0
    invoke-interface {p1}, Lcom/amazonaws/services/s3/internal/ServiceUtils$RetryableS3DownloadTask;->getS3ObjectStream()Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const/4 v3, 0x1

    .line 371
    :try_start_0
    invoke-interface {p1}, Lcom/amazonaws/services/s3/internal/ServiceUtils$RetryableS3DownloadTask;->needIntegrityCheck()Z

    move-result v4

    .line 370
    invoke-static {v2, p0, v4, p2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->downloadObjectToFile(Lcom/amazonaws/services/s3/model/S3Object;Ljava/io/File;ZZ)V
    :try_end_0
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->abort()V

    move v3, v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v4

    .line 374
    :try_start_1
    invoke-virtual {v4}, Lcom/amazonaws/AmazonClientException;->isRetryable()Z

    move-result v5

    if-nez v5, :cond_2

    .line 375
    throw v4

    .line 387
    :cond_2
    invoke-virtual {v4}, Lcom/amazonaws/AmazonClientException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    instance-of v5, v5, Ljava/net/SocketException;

    if-nez v5, :cond_5

    .line 388
    invoke-virtual {v4}, Lcom/amazonaws/AmazonClientException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    instance-of v5, v5, Ljavax/net/ssl/SSLProtocolException;

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    .line 393
    throw v4

    .line 395
    :cond_4
    sget-object v1, Lcom/amazonaws/services/s3/internal/ServiceUtils;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Retry the download of object "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/S3Object;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " (bucket "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/S3Object;->getBucketName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 395
    invoke-interface {v1, v5, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 401
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->abort()V

    move v1, v3

    :goto_0
    if-nez v3, :cond_0

    return-object v2

    .line 389
    :cond_5
    :goto_1
    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 401
    :goto_2
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->abort()V

    throw p0
.end method

.method public static skipMd5CheckPerRequest(Lcom/amazonaws/AmazonWebServiceRequest;)Z
    .locals 3

    const-string v0, "com.amazonaws.services.s3.disableGetObjectMD5Validation"

    .line 439
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 443
    :cond_0
    instance-of v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 444
    check-cast p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;

    .line 446
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getRange()[J

    move-result-object v0

    if-eqz v0, :cond_1

    return v1

    .line 449
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object p0

    if-eqz p0, :cond_7

    return v1

    .line 452
    :cond_2
    instance-of v0, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    if-eqz v0, :cond_5

    .line 453
    check-cast p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 454
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 455
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getSSEAlgorithm()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    return v1

    .line 458
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_0
    return v1

    .line 459
    :cond_5
    instance-of v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;

    if-eqz v0, :cond_7

    .line 460
    check-cast p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;

    .line 461
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object p0

    if-eqz p0, :cond_6

    goto :goto_1

    :cond_6
    move v1, v2

    :goto_1
    return v1

    :cond_7
    return v2
.end method

.method public static skipMd5CheckPerResponse(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 425
    :cond_0
    sget-object v1, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->KMS:Lcom/amazonaws/services/s3/model/SSEAlgorithm;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->toString()Ljava/lang/String;

    move-result-object v1

    .line 426
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getSSEAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 425
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 427
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getSSECustomerAlgorithm()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static toByteArray(Ljava/lang/String;)[B
    .locals 1

    .line 130
    sget-object v0, Lcom/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method
