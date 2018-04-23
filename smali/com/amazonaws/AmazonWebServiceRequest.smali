.class public abstract Lcom/amazonaws/AmazonWebServiceRequest;
.super Ljava/lang/Object;
.source "AmazonWebServiceRequest.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private cloneSource:Lcom/amazonaws/AmazonWebServiceRequest;

.field private credentials:Lcom/amazonaws/auth/AWSCredentials;

.field private generalProgressListener:Lcom/amazonaws/event/ProgressListener;

.field private final requestClientOptions:Lcom/amazonaws/RequestClientOptions;

.field private requestMetricCollector:Lcom/amazonaws/metrics/RequestMetricCollector;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/amazonaws/RequestClientOptions;

    invoke-direct {v0}, Lcom/amazonaws/RequestClientOptions;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/AmazonWebServiceRequest;->requestClientOptions:Lcom/amazonaws/RequestClientOptions;

    return-void
.end method

.method private setCloneSource(Lcom/amazonaws/AmazonWebServiceRequest;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceRequest;->cloneSource:Lcom/amazonaws/AmazonWebServiceRequest;

    return-void
.end method


# virtual methods
.method public clone()Lcom/amazonaws/AmazonWebServiceRequest;
    .locals 3

    .line 216
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/AmazonWebServiceRequest;

    .line 217
    invoke-direct {v0, p0}, Lcom/amazonaws/AmazonWebServiceRequest;->setCloneSource(Lcom/amazonaws/AmazonWebServiceRequest;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 220
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Got a CloneNotSupportedException from Object.clone() even though we\'re Cloneable!"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceRequest;->clone()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v0

    return-object v0
.end method

.method protected final copyBaseTo(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceRequest;->generalProgressListener:Lcom/amazonaws/event/ProgressListener;

    invoke-virtual {p1, v0}, Lcom/amazonaws/AmazonWebServiceRequest;->setGeneralProgressListener(Lcom/amazonaws/event/ProgressListener;)V

    .line 171
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceRequest;->requestMetricCollector:Lcom/amazonaws/metrics/RequestMetricCollector;

    invoke-virtual {p1, v0}, Lcom/amazonaws/AmazonWebServiceRequest;->setRequestMetricCollector(Lcom/amazonaws/metrics/RequestMetricCollector;)V

    return-object p1
.end method

.method public getCloneRoot()Lcom/amazonaws/AmazonWebServiceRequest;
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceRequest;->cloneSource:Lcom/amazonaws/AmazonWebServiceRequest;

    if-eqz v0, :cond_0

    .line 196
    :goto_0
    invoke-virtual {v0}, Lcom/amazonaws/AmazonWebServiceRequest;->getCloneSource()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 197
    invoke-virtual {v0}, Lcom/amazonaws/AmazonWebServiceRequest;->getCloneSource()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getCloneSource()Lcom/amazonaws/AmazonWebServiceRequest;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceRequest;->cloneSource:Lcom/amazonaws/AmazonWebServiceRequest;

    return-object v0
.end method

.method public getGeneralProgressListener()Lcom/amazonaws/event/ProgressListener;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceRequest;->generalProgressListener:Lcom/amazonaws/event/ProgressListener;

    return-object v0
.end method

.method public getRequestClientOptions()Lcom/amazonaws/RequestClientOptions;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceRequest;->requestClientOptions:Lcom/amazonaws/RequestClientOptions;

    return-object v0
.end method

.method public getRequestCredentials()Lcom/amazonaws/auth/AWSCredentials;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceRequest;->credentials:Lcom/amazonaws/auth/AWSCredentials;

    return-object v0
.end method

.method public getRequestMetricCollector()Lcom/amazonaws/metrics/RequestMetricCollector;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceRequest;->requestMetricCollector:Lcom/amazonaws/metrics/RequestMetricCollector;

    return-object v0
.end method

.method public setGeneralProgressListener(Lcom/amazonaws/event/ProgressListener;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceRequest;->generalProgressListener:Lcom/amazonaws/event/ProgressListener;

    return-void
.end method

.method public setRequestCredentials(Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceRequest;->credentials:Lcom/amazonaws/auth/AWSCredentials;

    return-void
.end method

.method public setRequestMetricCollector(Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 104
    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceRequest;->requestMetricCollector:Lcom/amazonaws/metrics/RequestMetricCollector;

    return-void
.end method

.method public withGeneralProgressListener(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/AmazonWebServiceRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">(",
            "Lcom/amazonaws/event/ProgressListener;",
            ")TT;"
        }
    .end annotation

    .line 157
    invoke-virtual {p0, p1}, Lcom/amazonaws/AmazonWebServiceRequest;->setGeneralProgressListener(Lcom/amazonaws/event/ProgressListener;)V

    return-object p0
.end method

.method public withRequestMetricCollector(Lcom/amazonaws/metrics/RequestMetricCollector;)Lcom/amazonaws/AmazonWebServiceRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">(",
            "Lcom/amazonaws/metrics/RequestMetricCollector;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 119
    invoke-virtual {p0, p1}, Lcom/amazonaws/AmazonWebServiceRequest;->setRequestMetricCollector(Lcom/amazonaws/metrics/RequestMetricCollector;)V

    return-object p0
.end method
