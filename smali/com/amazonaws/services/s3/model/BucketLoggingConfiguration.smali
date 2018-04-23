.class public Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;
.super Ljava/lang/Object;
.source "BucketLoggingConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private destinationBucketName:Ljava/lang/String;

.field private logFilePrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;->destinationBucketName:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;->logFilePrefix:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;->destinationBucketName:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;->logFilePrefix:Ljava/lang/String;

    .line 78
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;->setLogFilePrefix(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;->setDestinationBucketName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDestinationBucketName()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;->destinationBucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getLogFilePrefix()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;->logFilePrefix:Ljava/lang/String;

    return-object v0
.end method

.method public isLoggingEnabled()Z
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;->destinationBucketName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;->logFilePrefix:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDestinationBucketName(Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;->destinationBucketName:Ljava/lang/String;

    return-void
.end method

.method public setLogFilePrefix(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 112
    :cond_0
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;->logFilePrefix:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoggingConfiguration enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;->isLoggingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", destinationBucketName="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;->getDestinationBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", logFilePrefix="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;->getLogFilePrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
