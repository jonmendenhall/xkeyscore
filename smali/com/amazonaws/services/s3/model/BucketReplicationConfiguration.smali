.class public Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;
.super Ljava/lang/Object;
.source "BucketReplicationConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private roleARN:Ljava/lang/String;

.field private rules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/s3/model/ReplicationRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;->rules:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addRule(Ljava/lang/String;Lcom/amazonaws/services/s3/model/ReplicationRule;)Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;
    .locals 1

    if-eqz p1, :cond_2

    .line 119
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 124
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Replication rule cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;->rules:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 120
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Rule id cannot be null or empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRoleARN()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;->roleARN:Ljava/lang/String;

    return-object v0
.end method

.method public getRule(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ReplicationRule;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;->rules:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/ReplicationRule;

    return-object p1
.end method

.method public getRules()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/s3/model/ReplicationRule;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;->rules:Ljava/util/Map;

    return-object v0
.end method

.method public removeRule(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;->rules:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setRoleARN(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;->roleARN:Ljava/lang/String;

    return-void
.end method

.method public setRules(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/s3/model/ReplicationRule;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 88
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Replication rules cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;->rules:Ljava/util/Map;

    return-void
.end method

.method public withRoleARN(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;->setRoleARN(Ljava/lang/String;)V

    return-object p0
.end method

.method public withRules(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/s3/model/ReplicationRule;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;"
        }
    .end annotation

    .line 104
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;->setRules(Ljava/util/Map;)V

    return-object p0
.end method
