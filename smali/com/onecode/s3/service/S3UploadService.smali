.class public Lcom/onecode/s3/service/S3UploadService;
.super Landroid/app/IntentService;
.source "S3UploadService.java"


# static fields
.field private static final ACTION_UPLOAD:Ljava/lang/String; = "com.kanvas.android.services.live.action.UPLOAD"

.field private static final EXTRA_DELETE_FILE:Ljava/lang/String; = "com.kanvas.android.services.live.extra.DELETE_FILE"

.field private static final EXTRA_FILE:Ljava/lang/String; = "com.kanvas.android.services.live.extra.FILE"

.field private static final EXTRA_S3_BUCKET_DATA:Ljava/lang/String; = "com.kanvas.android.services.live.extra.S3_BUCKET_DATA"

.field private static final EXTRA_S3_CALLBACK:Ljava/lang/String; = "com.kanvas.android.services.live.extra.S3_CALLBACK"

.field public static final EXTRA_SERIALIZABLE:Ljava/lang/String; = "EXTRA_SERIALIZABLE"

.field private static final TAG:Ljava/lang/String; = "S3UploadService"

.field private static final VERBOSE:Z = true


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "S3UploadService"

    .line 46
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private buildPor(Lcom/onecode/s3/model/S3BucketData;Ljava/io/File;Z)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 7

    .line 130
    invoke-virtual {p1}, Lcom/onecode/s3/model/S3BucketData;->getBucket()Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-virtual {p1}, Lcom/onecode/s3/model/S3BucketData;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 133
    new-instance p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-direct {p1, v2, v3, p2}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 134
    new-instance v6, Lcom/onecode/s3/service/S3UploadService$1;

    move-object v0, v6

    move-object v1, p0

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/onecode/s3/service/S3UploadService$1;-><init>(Lcom/onecode/s3/service/S3UploadService;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)V

    invoke-virtual {p1, v6}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setGeneralProgressListener(Lcom/amazonaws/event/ProgressListener;)V

    .line 165
    sget-object p2, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->PublicRead:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setCannedAcl(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V

    return-object p1
.end method

.method private handleUpload(Lcom/onecode/s3/model/S3BucketData;Ljava/io/File;ZLcom/onecode/s3/callback/S3Callback;)V
    .locals 1

    .line 91
    invoke-direct {p0, p1}, Lcom/onecode/s3/service/S3UploadService;->setUpAmazonClient(Lcom/onecode/s3/model/S3BucketData;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;

    move-result-object v0

    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/onecode/s3/service/S3UploadService;->buildPor(Lcom/onecode/s3/model/S3BucketData;Ljava/io/File;Z)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    .line 93
    invoke-virtual {v0, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->upload(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Upload;

    move-result-object p1

    .line 96
    :try_start_0
    invoke-interface {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Upload;->waitForCompletion()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "S3UploadService"

    const-string p2, "AmazonS3Exception. retrying."

    .line 101
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 98
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    if-nez p4, :cond_0

    return-void

    .line 106
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p4}, Lcom/onecode/s3/callback/S3Callback;->getActionCallback()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "EXTRA_SERIALIZABLE"

    .line 107
    invoke-virtual {p4}, Lcom/onecode/s3/callback/S3Callback;->getExtra()Ljava/io/Serializable;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 108
    invoke-virtual {p0, p1}, Lcom/onecode/s3/service/S3UploadService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setUpAmazonClient(Lcom/onecode/s3/model/S3BucketData;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;
    .locals 4

    .line 114
    sget v0, Lcom/onecode/s3/R$string;->s3_system_property:I

    invoke-virtual {p0, v0}, Lcom/onecode/s3/service/S3UploadService;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Lcom/onecode/s3/model/S3BucketData;->getS3Credentials()Lcom/onecode/s3/model/S3Credentials;

    move-result-object v0

    .line 116
    new-instance v1, Lcom/amazonaws/auth/BasicSessionCredentials;

    invoke-virtual {v0}, Lcom/onecode/s3/model/S3Credentials;->getAccessKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/onecode/s3/model/S3Credentials;->getSecretKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/onecode/s3/model/S3Credentials;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/amazonaws/auth/BasicSessionCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;

    invoke-direct {v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    .line 121
    invoke-virtual {p1}, Lcom/onecode/s3/model/S3BucketData;->getRegion()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazonaws/regions/Regions;->fromName(Ljava/lang/String;)Lcom/amazonaws/regions/Regions;

    move-result-object p1

    invoke-static {p1}, Lcom/amazonaws/regions/Region;->getRegion(Lcom/amazonaws/regions/Regions;)Lcom/amazonaws/regions/Region;

    move-result-object p1

    .line 122
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->getAmazonS3Client()Lcom/amazonaws/services/s3/AmazonS3;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/amazonaws/services/s3/AmazonS3;->setRegion(Lcom/amazonaws/regions/Region;)V

    return-object v0
.end method

.method public static upload(Landroid/content/Context;Lcom/onecode/s3/model/S3BucketData;Ljava/io/File;ZLcom/onecode/s3/callback/S3Callback;)V
    .locals 2

    .line 53
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/onecode/s3/service/S3UploadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.kanvas.android.services.live.action.UPLOAD"

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.kanvas.android.services.live.extra.S3_BUCKET_DATA"

    .line 55
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "com.kanvas.android.services.live.extra.FILE"

    .line 56
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "com.kanvas.android.services.live.extra.DELETE_FILE"

    .line 57
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "com.kanvas.android.services.live.extra.S3_CALLBACK"

    .line 58
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 59
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 70
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.kanvas.android.services.live.action.UPLOAD"

    .line 71
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "com.kanvas.android.services.live.extra.S3_BUCKET_DATA"

    .line 73
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/onecode/s3/model/S3BucketData;

    const-string v1, "com.kanvas.android.services.live.extra.FILE"

    .line 74
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    const-string v2, "com.kanvas.android.services.live.extra.DELETE_FILE"

    const/4 v3, 0x1

    .line 75
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "com.kanvas.android.services.live.extra.S3_CALLBACK"

    .line 76
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/onecode/s3/callback/S3Callback;

    .line 77
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/onecode/s3/service/S3UploadService;->handleUpload(Lcom/onecode/s3/model/S3BucketData;Ljava/io/File;ZLcom/onecode/s3/callback/S3Callback;)V

    return-void
.end method
