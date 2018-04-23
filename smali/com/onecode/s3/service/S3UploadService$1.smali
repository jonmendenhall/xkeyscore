.class Lcom/onecode/s3/service/S3UploadService$1;
.super Ljava/lang/Object;
.source "S3UploadService.java"

# interfaces
.implements Lcom/amazonaws/event/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onecode/s3/service/S3UploadService;->buildPor(Lcom/onecode/s3/model/S3BucketData;Ljava/io/File;Z)Lcom/amazonaws/services/s3/model/PutObjectRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onecode/s3/service/S3UploadService;

.field private uploadStartTime:J

.field final url:Ljava/lang/String;

.field final synthetic val$bucket:Ljava/lang/String;

.field final synthetic val$deleteFileAfter:Z

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/onecode/s3/service/S3UploadService;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/onecode/s3/service/S3UploadService$1;->this$0:Lcom/onecode/s3/service/S3UploadService;

    iput-object p2, p0, Lcom/onecode/s3/service/S3UploadService$1;->val$bucket:Ljava/lang/String;

    iput-object p3, p0, Lcom/onecode/s3/service/S3UploadService$1;->val$key:Ljava/lang/String;

    iput-object p4, p0, Lcom/onecode/s3/service/S3UploadService$1;->val$file:Ljava/io/File;

    iput-boolean p5, p0, Lcom/onecode/s3/service/S3UploadService$1;->val$deleteFileAfter:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iget-object p1, p0, Lcom/onecode/s3/service/S3UploadService$1;->this$0:Lcom/onecode/s3/service/S3UploadService;

    sget p2, Lcom/onecode/s3/R$string;->s3_format_url:I

    invoke-virtual {p1, p2}, Lcom/onecode/s3/service/S3UploadService;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    iget-object p3, p0, Lcom/onecode/s3/service/S3UploadService$1;->val$bucket:Ljava/lang/String;

    const/4 p4, 0x0

    aput-object p3, p2, p4

    iget-object p3, p0, Lcom/onecode/s3/service/S3UploadService$1;->val$key:Ljava/lang/String;

    const/4 p4, 0x1

    aput-object p3, p2, p4

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onecode/s3/service/S3UploadService$1;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public progressChanged(Lcom/amazonaws/event/ProgressEvent;)V
    .locals 13

    .line 141
    :try_start_0
    invoke-virtual {p1}, Lcom/amazonaws/event/ProgressEvent;->getEventCode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onecode/s3/service/S3UploadService$1;->uploadStartTime:J

    goto/16 :goto_0

    .line 143
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/event/ProgressEvent;->getEventCode()I

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_1

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/onecode/s3/service/S3UploadService$1;->uploadStartTime:J

    sub-long/2addr v5, v7

    .line 145
    iget-object p1, p0, Lcom/onecode/s3/service/S3UploadService$1;->val$file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v7

    long-to-double v7, v7

    long-to-double v5, v5

    const-wide v9, 0x408f400000000000L    # 1000.0

    div-double v11, v5, v9

    div-double/2addr v7, v11

    double-to-int p1, v7

    .line 147
    iget-object v0, p0, Lcom/onecode/s3/service/S3UploadService$1;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    long-to-double v7, v7

    div-double/2addr v7, v9

    int-to-double v11, p1

    div-double/2addr v11, v9

    const-string p1, "S3UploadService"

    .line 150
    iget-object v0, p0, Lcom/onecode/s3/service/S3UploadService$1;->this$0:Lcom/onecode/s3/service/S3UploadService;

    sget v2, Lcom/onecode/s3/R$string;->s3_format_uploaded:I

    invoke-virtual {v0, v2}, Lcom/onecode/s3/service/S3UploadService;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v2, v4

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-boolean p1, p0, Lcom/onecode/s3/service/S3UploadService$1;->val$deleteFileAfter:Z

    if-eqz p1, :cond_2

    .line 154
    iget-object p1, p0, Lcom/onecode/s3/service/S3UploadService$1;->val$file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/event/ProgressEvent;->getEventCode()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    const-string p1, "S3UploadService"

    .line 157
    iget-object v0, p0, Lcom/onecode/s3/service/S3UploadService$1;->this$0:Lcom/onecode/s3/service/S3UploadService;

    sget v1, Lcom/onecode/s3/R$string;->s3_format_upload_failed:I

    invoke-virtual {v0, v1}, Lcom/onecode/s3/service/S3UploadService;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/onecode/s3/service/S3UploadService$1;->url:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "S3UploadService"

    const-string v1, "ProgressListener error"

    .line 160
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
