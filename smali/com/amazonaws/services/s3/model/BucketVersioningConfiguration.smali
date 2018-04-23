.class public Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;
.super Ljava/lang/Object;
.source "BucketVersioningConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ENABLED:Ljava/lang/String; = "Enabled"

.field public static final OFF:Ljava/lang/String; = "Off"

.field public static final SUSPENDED:Ljava/lang/String; = "Suspended"


# instance fields
.field private isMfaDeleteEnabled:Ljava/lang/Boolean;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;->isMfaDeleteEnabled:Ljava/lang/Boolean;

    const-string v0, "Off"

    .line 103
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;->setStatus(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;->isMfaDeleteEnabled:Ljava/lang/Boolean;

    .line 120
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;->setStatus(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;->status:Ljava/lang/String;

    return-object v0
.end method

.method public isMfaDeleteEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;->isMfaDeleteEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setMfaDeleteEnabled(Ljava/lang/Boolean;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;->isMfaDeleteEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;->status:Ljava/lang/String;

    return-void
.end method

.method public withMfaDeleteEnabled(Ljava/lang/Boolean;)Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;
    .locals 0

    .line 242
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;->setMfaDeleteEnabled(Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public withStatus(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;
    .locals 0

    .line 172
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;->setStatus(Ljava/lang/String;)V

    return-object p0
.end method
