.class public interface abstract Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;
.super Ljava/lang/Object;
.source "RetryPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/retry/RetryPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BackoffStrategy"
.end annotation


# static fields
.field public static final NO_DELAY:Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 200
    new-instance v0, Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy$1;

    invoke-direct {v0}, Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy$1;-><init>()V

    sput-object v0, Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;->NO_DELAY:Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;

    return-void
.end method


# virtual methods
.method public abstract delayBeforeNextRetry(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/AmazonClientException;I)J
.end method
