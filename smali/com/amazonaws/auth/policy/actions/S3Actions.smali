.class public final enum Lcom/amazonaws/auth/policy/actions/S3Actions;
.super Ljava/lang/Enum;
.source "S3Actions.java"

# interfaces
.implements Lcom/amazonaws/auth/policy/Action;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/auth/policy/actions/S3Actions;",
        ">;",
        "Lcom/amazonaws/auth/policy/Action;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum AbortMultipartUpload:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum AllS3Actions:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum CreateBucket:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum DeleteBucket:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum DeleteBucketPolicy:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum DeleteBucketWebsiteConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum DeleteObject:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum DeleteObjectVersion:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum GetBucketAcl:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum GetBucketCrossOriginConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum GetBucketLifecycleConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum GetBucketLocation:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum GetBucketLogging:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum GetBucketNotificationConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum GetBucketPolicy:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum GetBucketRequesterPays:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum GetBucketTagging:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum GetBucketVersioningConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum GetBucketWebsiteConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum GetObject:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum GetObjectAcl:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum GetObjectVersion:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum GetObjectVersionAcl:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum ListBucketMultipartUploads:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum ListBuckets:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum ListMultipartUploadParts:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum ListObjectVersions:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum ListObjects:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum PutObject:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum RestoreObject:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum SetBucketAcl:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum SetBucketCrossOriginConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum SetBucketLifecycleConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum SetBucketLogging:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum SetBucketNotificationConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum SetBucketPolicy:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum SetBucketRequesterPays:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum SetBucketTagging:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum SetBucketVersioningConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum SetBucketWebsiteConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum SetObjectAcl:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum SetObjectVersionAcl:Lcom/amazonaws/auth/policy/actions/S3Actions;


# instance fields
.field private final action:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 31
    new-instance v0, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const-string v1, "AllS3Actions"

    const-string v2, "s3:*"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/S3Actions;->AllS3Actions:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 42
    new-instance v0, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const-string v1, "GetObject"

    const-string v2, "s3:GetObject"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetObject:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 53
    new-instance v0, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const-string v1, "GetObjectVersion"

    const-string v2, "s3:GetObjectVersion"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetObjectVersion:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 62
    new-instance v0, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const-string v1, "PutObject"

    const-string v2, "s3:PutObject"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/S3Actions;->PutObject:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 71
    new-instance v0, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const-string v1, "GetObjectAcl"

    const-string v2, "s3:GetObjectAcl"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetObjectAcl:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 80
    new-instance v0, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const-string v1, "GetObjectVersionAcl"

    const-string v2, "s3:GetObjectVersionAcl"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetObjectVersionAcl:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 92
    new-instance v0, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const-string v1, "SetObjectAcl"

    const-string v2, "s3:PutObjectAcl"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/S3Actions;->SetObjectAcl:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 104
    new-instance v0, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const-string v1, "SetObjectVersionAcl"

    const-string v2, "s3:PutObjectAclVersion"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/S3Actions;->SetObjectVersionAcl:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 113
    new-instance v0, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const-string v1, "DeleteObject"

    const-string v2, "s3:DeleteObject"

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v2}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/S3Actions;->DeleteObject:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 122
    new-instance v0, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const-string v1, "DeleteObjectVersion"

    const-string v2, "s3:DeleteObjectVersion"

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v2}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/S3Actions;->DeleteObjectVersion:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 129
    new-instance v0, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const-string v1, "ListMultipartUploadParts"

    const-string v2, "s3:ListMultipartUploadParts"

    const/16 v13, 0xa

    invoke-direct {v0, v1, v13, v2}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/S3Actions;->ListMultipartUploadParts:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 136
    new-instance v0, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const-string v1, "AbortMultipartUpload"

    const-string v2, "s3:AbortMultipartUpload"

    const/16 v14, 0xb

    invoke-direct {v0, v1, v14, v2}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/S3Actions;->AbortMultipartUpload:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 143
    new-instance v0, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const-string v1, "RestoreObject"

    const-string v2, "s3:RestoreObject"

    const/16 v15, 0xc

    invoke-direct {v0, v1, v15, v2}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/S3Actions;->RestoreObject:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 152
    new-instance v0, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const-string v1, "CreateBucket"

    const-string v2, "s3:CreateBucket"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v2}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/S3Actions;->CreateBucket:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 161
    new-instance v0, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const-string v1, "DeleteBucket"

    const-string v2, "s3:DeleteBucket"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v2}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/S3Actions;->DeleteBucket:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 170
    new-instance v0, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const-string v1, "ListObjects"

    const-string v2, "s3:ListBucket"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15, v2}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/S3Actions;->ListObjects:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 179
    new-instance v0, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const-string v1, "ListObjectVersions"

    const-string v2, "s3:ListBucketVersions"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15, v2}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/S3Actions;->ListObjectVersions:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 188
    new-instance v0, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const-string v1, "ListBuckets"

    const-string v2, "s3:ListAllMyBuckets"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15, v2}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/S3Actions;->ListBuckets:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 198
    new-instance v0, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const-string v1, "ListBucketMultipartUploads"

    const-string v2, "s3:ListBucketMultipartUploads"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15, v2}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/S3Actions;->ListBucketMultipartUploads:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 207
    new-instance v0, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const-string v1, "GetBucketAcl"

    const-string v2, "s3:GetBucketAcl"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15, v2}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetBucketAcl:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 219
    new-instance v0, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const-string v1, "SetBucketAcl"

    const-string v2, "s3:PutBucketAcl"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15, v2}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/S3Actions;->SetBucketAcl:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 229
    new-instance v0, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const-string v1, "GetBucketCrossOriginConfiguration"

    const-string v2, "s3:GetBucketCORS"

    const/16 v15, 0x15

    invoke-direct {v0, v1, v15, v2}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetBucketCrossOriginConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 239
    new-instance v0, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const-string v1, "SetBucketCrossOriginConfiguration"

    const-string v2, "s3:PutBucketCORS"

    const/16 v15, 0x16

    invoke-direct {v0, v1, v15, v2}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/S3Actions;->SetBucketCrossOriginConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 249
    new-instance v0, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const-string v1, "GetBucketVersioningConfiguration"

    const-string v2, "s3:GetBucketVersioning"

    const/16 v15, 0x17

    invoke-direct {v0, v1, v15, v2}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetBucketVersioningConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 258
    new-instance v0, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const-string v1, "SetBucketVersioningConfiguration"

    const-string v2, "s3:PutBucketVersioning"

    const/16 v15, 0x18

    invoke-direct {v0, v1, v15, v2}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/S3Actions;->SetBucketVersioningConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 265
    new-instance v0, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const-string v1, "GetBucketRequesterPays"

    const-string v2, "s3:GetBucketRequestPayment"

    const/16 v15, 0x19

    invoke-direct {v0, v1, v15, v2}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetBucketRequesterPays:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 272
    new-instance v0, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const-string v1, "SetBucketRequesterPays"

    const-string v2, "s3:PutBucketRequestPayment"

    const/16 v15, 0x1a

    invoke-direct {v0, v1, v15, v2}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/S3Actions;->SetBucketRequesterPays:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 281
    new-instance v0, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const-string v1, "GetBucketLocation"

    const-string v2, "s3:GetBucketLocation"

    const/16 v15, 0x1b

    invoke-direct {v0, v1, v15, v2}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetBucketLocation:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 290
    new-instance v0, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const-string v1, "GetBucketPolicy"

    const-string v2, "s3:GetBucketPolicy"

    const/16 v15, 0x1c

    invoke-direct {v0, v1, v15, v2}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetBucketPolicy:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 299
    new-instance v0, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const-string v1, "SetBucketPolicy"

    const-string v2, "s3:PutBucketPolicy"

    const/16 v15, 0x1d

    invoke-direct {v0, v1, v15, v2}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/S3Actions;->SetBucketPolicy:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 308
    new-instance v0, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const-string v1, "DeleteBucketPolicy"

    const-string v2, "s3:DeleteBucketPolicy"

    const/16 v15, 0x1e

    invoke-direct {v0, v1, v15, v2}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/S3Actions;->DeleteBucketPolicy:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 318
    new-instance v0, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const-string v1, "GetBucketNotificationConfiguration"

    const-string v2, "s3:GetBucketNotification"

    const/16 v15, 0x1f

    invoke-direct {v0, v1, v15, v2}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetBucketNotificationConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 329
    new-instance v0, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const-string v1, "SetBucketNotificationConfiguration"

    const-string v2, "s3:PutBucketNotification"

    const/16 v15, 0x20

    invoke-direct {v0, v1, v15, v2}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/S3Actions;->SetBucketNotificationConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 339
    new-instance v0, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const-string v1, "GetBucketLogging"

    const-string v2, "s3:GetBucketLogging"

    const/16 v15, 0x21

    invoke-direct {v0, v1, v15, v2}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetBucketLogging:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 349
    new-instance v0, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const-string v1, "SetBucketLogging"

    const-string v2, "s3:PutBucketLogging"

    const/16 v15, 0x22

    invoke-direct {v0, v1, v15, v2}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/S3Actions;->SetBucketLogging:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 359
    new-instance v0, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const-string v1, "GetBucketTagging"

    const-string v2, "s3:GetBucketTagging"

    const/16 v15, 0x23

    invoke-direct {v0, v1, v15, v2}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetBucketTagging:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 369
    new-instance v0, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const-string v1, "SetBucketTagging"

    const-string v2, "s3:PutBucketTagging"

    const/16 v15, 0x24

    invoke-direct {v0, v1, v15, v2}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/S3Actions;->SetBucketTagging:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 379
    new-instance v0, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const-string v1, "GetBucketWebsiteConfiguration"

    const-string v2, "s3:GetBucketWebsite"

    const/16 v15, 0x25

    invoke-direct {v0, v1, v15, v2}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetBucketWebsiteConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 389
    new-instance v0, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const-string v1, "SetBucketWebsiteConfiguration"

    const-string v2, "s3:PutBucketWebsite"

    const/16 v15, 0x26

    invoke-direct {v0, v1, v15, v2}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/S3Actions;->SetBucketWebsiteConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 399
    new-instance v0, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const-string v1, "DeleteBucketWebsiteConfiguration"

    const-string v2, "s3:DeleteBucketWebsite"

    const/16 v15, 0x27

    invoke-direct {v0, v1, v15, v2}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/S3Actions;->DeleteBucketWebsiteConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 409
    new-instance v0, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const-string v1, "GetBucketLifecycleConfiguration"

    const-string v2, "s3:GetLifecycleConfiguration"

    const/16 v15, 0x28

    invoke-direct {v0, v1, v15, v2}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetBucketLifecycleConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 419
    new-instance v0, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const-string v1, "SetBucketLifecycleConfiguration"

    const-string v2, "s3:PutLifecycleConfiguration"

    const/16 v15, 0x29

    invoke-direct {v0, v1, v15, v2}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/S3Actions;->SetBucketLifecycleConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v0, 0x2a

    .line 28
    new-array v0, v0, [Lcom/amazonaws/auth/policy/actions/S3Actions;

    sget-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->AllS3Actions:Lcom/amazonaws/auth/policy/actions/S3Actions;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetObject:Lcom/amazonaws/auth/policy/actions/S3Actions;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetObjectVersion:Lcom/amazonaws/auth/policy/actions/S3Actions;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->PutObject:Lcom/amazonaws/auth/policy/actions/S3Actions;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetObjectAcl:Lcom/amazonaws/auth/policy/actions/S3Actions;

    aput-object v1, v0, v7

    sget-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetObjectVersionAcl:Lcom/amazonaws/auth/policy/actions/S3Actions;

    aput-object v1, v0, v8

    sget-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->SetObjectAcl:Lcom/amazonaws/auth/policy/actions/S3Actions;

    aput-object v1, v0, v9

    sget-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->SetObjectVersionAcl:Lcom/amazonaws/auth/policy/actions/S3Actions;

    aput-object v1, v0, v10

    sget-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->DeleteObject:Lcom/amazonaws/auth/policy/actions/S3Actions;

    aput-object v1, v0, v11

    sget-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->DeleteObjectVersion:Lcom/amazonaws/auth/policy/actions/S3Actions;

    aput-object v1, v0, v12

    sget-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->ListMultipartUploadParts:Lcom/amazonaws/auth/policy/actions/S3Actions;

    aput-object v1, v0, v13

    sget-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->AbortMultipartUpload:Lcom/amazonaws/auth/policy/actions/S3Actions;

    aput-object v1, v0, v14

    sget-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->RestoreObject:Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->CreateBucket:Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->DeleteBucket:Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->ListObjects:Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->ListObjectVersions:Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->ListBuckets:Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->ListBucketMultipartUploads:Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetBucketAcl:Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->SetBucketAcl:Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetBucketCrossOriginConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->SetBucketCrossOriginConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetBucketVersioningConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->SetBucketVersioningConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetBucketRequesterPays:Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->SetBucketRequesterPays:Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetBucketLocation:Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetBucketPolicy:Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->SetBucketPolicy:Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->DeleteBucketPolicy:Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetBucketNotificationConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->SetBucketNotificationConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetBucketLogging:Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->SetBucketLogging:Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetBucketTagging:Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->SetBucketTagging:Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetBucketWebsiteConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->SetBucketWebsiteConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->DeleteBucketWebsiteConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetBucketLifecycleConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v2, 0x28

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->SetBucketLifecycleConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v2, 0x29

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazonaws/auth/policy/actions/S3Actions;->$VALUES:[Lcom/amazonaws/auth/policy/actions/S3Actions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 423
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 424
    iput-object p3, p0, Lcom/amazonaws/auth/policy/actions/S3Actions;->action:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/auth/policy/actions/S3Actions;
    .locals 1

    .line 28
    const-class v0, Lcom/amazonaws/auth/policy/actions/S3Actions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/auth/policy/actions/S3Actions;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/auth/policy/actions/S3Actions;
    .locals 1

    .line 28
    sget-object v0, Lcom/amazonaws/auth/policy/actions/S3Actions;->$VALUES:[Lcom/amazonaws/auth/policy/actions/S3Actions;

    invoke-virtual {v0}, [Lcom/amazonaws/auth/policy/actions/S3Actions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/auth/policy/actions/S3Actions;

    return-object v0
.end method


# virtual methods
.method public getActionName()Ljava/lang/String;
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/amazonaws/auth/policy/actions/S3Actions;->action:Ljava/lang/String;

    return-object v0
.end method
