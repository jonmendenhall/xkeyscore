.class public Lcom/amazonaws/internal/DynamoDBBackoffStrategy;
.super Lcom/amazonaws/internal/CustomBackoffStrategy;
.source "DynamoDBBackoffStrategy.java"


# static fields
.field public static final DEFAULT:Lcom/amazonaws/internal/CustomBackoffStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/amazonaws/internal/DynamoDBBackoffStrategy;

    invoke-direct {v0}, Lcom/amazonaws/internal/DynamoDBBackoffStrategy;-><init>()V

    sput-object v0, Lcom/amazonaws/internal/DynamoDBBackoffStrategy;->DEFAULT:Lcom/amazonaws/internal/CustomBackoffStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/amazonaws/internal/CustomBackoffStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackoffPeriod(I)I
    .locals 5

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 v0, 0x32

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    add-int/lit8 p1, p1, -0x1

    int-to-double v3, p1

    .line 26
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-int p1, v1

    mul-int/2addr v0, p1

    if-gez v0, :cond_1

    const v0, 0x7fffffff

    :cond_1
    return v0
.end method
