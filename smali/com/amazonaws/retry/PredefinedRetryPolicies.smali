.class public Lcom/amazonaws/retry/PredefinedRetryPolicies;
.super Ljava/lang/Object;
.source "PredefinedRetryPolicies.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy;,
        Lcom/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultRetryCondition;
    }
.end annotation


# static fields
.field private static final BASE_DELAY_IN_MILLISECONDS:I = 0x64

.field public static final DEFAULT:Lcom/amazonaws/retry/RetryPolicy;

.field public static final DEFAULT_BACKOFF_STRATEGY:Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;

.field public static final DEFAULT_MAX_ERROR_RETRY:I = 0x3

.field public static final DEFAULT_RETRY_CONDITION:Lcom/amazonaws/retry/RetryPolicy$RetryCondition;

.field public static final DYNAMODB_DEFAULT:Lcom/amazonaws/retry/RetryPolicy;

.field public static final DYNAMODB_DEFAULT_MAX_ERROR_RETRY:I = 0xa

.field private static final MAX_BACKOFF_IN_MILLISECONDS:I = 0x4e20

.field public static final NO_RETRY_POLICY:Lcom/amazonaws/retry/RetryPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 36
    new-instance v0, Lcom/amazonaws/retry/RetryPolicy;

    sget-object v1, Lcom/amazonaws/retry/RetryPolicy$RetryCondition;->NO_RETRY_CONDITION:Lcom/amazonaws/retry/RetryPolicy$RetryCondition;

    sget-object v2, Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;->NO_DELAY:Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/amazonaws/retry/RetryPolicy;-><init>(Lcom/amazonaws/retry/RetryPolicy$RetryCondition;Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;IZ)V

    sput-object v0, Lcom/amazonaws/retry/PredefinedRetryPolicies;->NO_RETRY_POLICY:Lcom/amazonaws/retry/RetryPolicy;

    .line 77
    new-instance v0, Lcom/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultRetryCondition;

    invoke-direct {v0}, Lcom/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultRetryCondition;-><init>()V

    sput-object v0, Lcom/amazonaws/retry/PredefinedRetryPolicies;->DEFAULT_RETRY_CONDITION:Lcom/amazonaws/retry/RetryPolicy$RetryCondition;

    .line 84
    new-instance v0, Lcom/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy;

    const/16 v1, 0x64

    const/16 v2, 0x4e20

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy;-><init>(IILcom/amazonaws/retry/PredefinedRetryPolicies$1;)V

    sput-object v0, Lcom/amazonaws/retry/PredefinedRetryPolicies;->DEFAULT_BACKOFF_STRATEGY:Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;

    .line 88
    invoke-static {}, Lcom/amazonaws/retry/PredefinedRetryPolicies;->getDefaultRetryPolicy()Lcom/amazonaws/retry/RetryPolicy;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/retry/PredefinedRetryPolicies;->DEFAULT:Lcom/amazonaws/retry/RetryPolicy;

    .line 89
    invoke-static {}, Lcom/amazonaws/retry/PredefinedRetryPolicies;->getDynamoDBDefaultRetryPolicy()Lcom/amazonaws/retry/RetryPolicy;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/retry/PredefinedRetryPolicies;->DYNAMODB_DEFAULT:Lcom/amazonaws/retry/RetryPolicy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultRetryPolicy()Lcom/amazonaws/retry/RetryPolicy;
    .locals 5

    .line 99
    new-instance v0, Lcom/amazonaws/retry/RetryPolicy;

    sget-object v1, Lcom/amazonaws/retry/PredefinedRetryPolicies;->DEFAULT_RETRY_CONDITION:Lcom/amazonaws/retry/RetryPolicy$RetryCondition;

    sget-object v2, Lcom/amazonaws/retry/PredefinedRetryPolicies;->DEFAULT_BACKOFF_STRATEGY:Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazonaws/retry/RetryPolicy;-><init>(Lcom/amazonaws/retry/RetryPolicy$RetryCondition;Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;IZ)V

    return-object v0
.end method

.method public static getDefaultRetryPolicyWithCustomMaxRetries(I)Lcom/amazonaws/retry/RetryPolicy;
    .locals 4

    .line 123
    new-instance v0, Lcom/amazonaws/retry/RetryPolicy;

    sget-object v1, Lcom/amazonaws/retry/PredefinedRetryPolicies;->DEFAULT_RETRY_CONDITION:Lcom/amazonaws/retry/RetryPolicy$RetryCondition;

    sget-object v2, Lcom/amazonaws/retry/PredefinedRetryPolicies;->DEFAULT_BACKOFF_STRATEGY:Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/amazonaws/retry/RetryPolicy;-><init>(Lcom/amazonaws/retry/RetryPolicy$RetryCondition;Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;IZ)V

    return-object v0
.end method

.method public static getDynamoDBDefaultRetryPolicy()Lcom/amazonaws/retry/RetryPolicy;
    .locals 5

    .line 112
    new-instance v0, Lcom/amazonaws/retry/RetryPolicy;

    sget-object v1, Lcom/amazonaws/retry/PredefinedRetryPolicies;->DEFAULT_RETRY_CONDITION:Lcom/amazonaws/retry/RetryPolicy$RetryCondition;

    sget-object v2, Lcom/amazonaws/retry/PredefinedRetryPolicies;->DEFAULT_BACKOFF_STRATEGY:Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;

    const/16 v3, 0xa

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazonaws/retry/RetryPolicy;-><init>(Lcom/amazonaws/retry/RetryPolicy$RetryCondition;Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;IZ)V

    return-object v0
.end method

.method public static getDynamoDBDefaultRetryPolicyWithCustomMaxRetries(I)Lcom/amazonaws/retry/RetryPolicy;
    .locals 4

    .line 135
    new-instance v0, Lcom/amazonaws/retry/RetryPolicy;

    sget-object v1, Lcom/amazonaws/retry/PredefinedRetryPolicies;->DEFAULT_RETRY_CONDITION:Lcom/amazonaws/retry/RetryPolicy$RetryCondition;

    sget-object v2, Lcom/amazonaws/retry/PredefinedRetryPolicies;->DEFAULT_BACKOFF_STRATEGY:Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/amazonaws/retry/RetryPolicy;-><init>(Lcom/amazonaws/retry/RetryPolicy$RetryCondition;Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;IZ)V

    return-object v0
.end method
