.class public abstract Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;
.super Ljava/lang/Object;
.source "PersistableTransfer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deserializeFrom(Ljava/io/InputStream;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;",
            ">(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .line 83
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Lcom/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    move-object/from16 v4, p0

    invoke-direct {v2, v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 84
    invoke-static {v1}, Lcom/amazonaws/util/json/JsonUtils;->getJsonReader(Ljava/io/Reader;)Lcom/amazonaws/util/json/AwsJsonReader;

    move-result-object v1

    .line 87
    :try_start_0
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->beginObject()V

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-wide v13, v3

    move-wide v15, v13

    move-object v3, v5

    move-object v4, v3

    move-object v7, v4

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    const/4 v12, 0x0

    .line 88
    :goto_0
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 89
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->nextName()Ljava/lang/String;

    move-result-object v6

    const-string v2, "pauseType"

    .line 90
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    :goto_1
    const/16 v17, 0x0

    goto :goto_0

    :cond_0
    const-string v2, "bucketName"

    .line 92
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto :goto_1

    :cond_1
    const-string v2, "key"

    .line 94
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 95
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    goto :goto_1

    :cond_2
    const-string v2, "file"

    .line 96
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 97
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto :goto_1

    :cond_3
    const-string v2, "multipartUploadId"

    .line 100
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 101
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    goto :goto_1

    :cond_4
    const-string v2, "partSize"

    .line 102
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 103
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    goto :goto_1

    :cond_5
    const-string v2, "mutlipartUploadThreshold"

    .line 104
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 105
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    goto :goto_1

    :cond_6
    const-string v2, "versionId"

    .line 108
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 109
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    goto :goto_1

    :cond_7
    const-string v2, "range"

    .line 110
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 111
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->beginArray()V

    const/4 v2, 0x2

    .line 112
    new-array v2, v2, [J

    .line 113
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    const/16 v17, 0x0

    aput-wide v18, v2, v17

    const/4 v6, 0x1

    .line 114
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    aput-wide v18, v2, v6

    .line 115
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->endArray()V

    move-object v10, v2

    goto/16 :goto_0

    :cond_8
    const/16 v17, 0x0

    const-string v2, "responseHeaders"

    .line 116
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 117
    new-instance v2, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;-><init>()V

    .line 118
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->beginObject()V

    .line 119
    :goto_2
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 120
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->nextName()Ljava/lang/String;

    move-result-object v6

    const-string v11, "contentType"

    .line 121
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 122
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->setContentType(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    const-string v11, "contentLanguage"

    .line 123
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 124
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->setContentLanguage(Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    const-string v11, "expires"

    .line 125
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 126
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->setExpires(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    const-string v11, "cacheControl"

    .line 127
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 128
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->setCacheControl(Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    const-string v11, "contentDisposition"

    .line 129
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 130
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->setContentDisposition(Ljava/lang/String;)V

    goto :goto_2

    :cond_d
    const-string v11, "contentEncoding"

    .line 131
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 132
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->setContentEncoding(Ljava/lang/String;)V

    goto :goto_2

    .line 134
    :cond_e
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->skipValue()V

    goto :goto_2

    .line 137
    :cond_f
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->endObject()V

    move-object v11, v2

    goto/16 :goto_0

    :cond_10
    const-string v2, "isRequesterPays"

    .line 138
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 139
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    move v12, v2

    goto/16 :goto_0

    .line 141
    :cond_11
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->skipValue()V

    goto/16 :goto_0

    .line 144
    :cond_12
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->endObject()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "download"

    .line 149
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 150
    new-instance v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;

    move-object v6, v1

    move-object v13, v3

    invoke-direct/range {v6 .. v13}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[JLcom/amazonaws/services/s3/model/ResponseHeaderOverrides;ZLjava/lang/String;)V

    return-object v1

    :cond_13
    const-string v1, "upload"

    .line 152
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 153
    new-instance v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;

    move-object v6, v1

    move-object v9, v3

    move-object v10, v4

    move-wide v11, v13

    move-wide v13, v15

    invoke-direct/range {v6 .. v14}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    return-object v1

    .line 156
    :cond_14
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported paused transfer type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 146
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static deserializeFrom(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 173
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Lcom/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    .line 174
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 176
    :try_start_0
    invoke-static {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;->deserializeFrom(Ljava/io/InputStream;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object p0

    :catchall_0
    move-exception p0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 181
    :catch_1
    throw p0
.end method


# virtual methods
.method public abstract serialize()Ljava/lang/String;
.end method

.method public final serialize(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;->serialize()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 55
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method
