.class final enum Lcom/intermedia/model/PayoutState;
.super Ljava/lang/Enum;
.source "Payout.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/intermedia/model/PayoutState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/intermedia/model/PayoutState;

.field public static final enum CANCELED:Lcom/intermedia/model/PayoutState;

.field public static final enum COMPLETED:Lcom/intermedia/model/PayoutState;

.field public static final enum CONFIRMED:Lcom/intermedia/model/PayoutState;

.field public static final enum CREATED:Lcom/intermedia/model/PayoutState;

.field public static final enum EMAIL_SUBMITTED:Lcom/intermedia/model/PayoutState;

.field public static final enum FAILED:Lcom/intermedia/model/PayoutState;

.field public static final enum PENDING:Lcom/intermedia/model/PayoutState;

.field public static final enum UNKNOWN:Lcom/intermedia/model/PayoutState;

.field private static map:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/intermedia/model/PayoutState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 15
    new-instance v0, Lcom/intermedia/model/PayoutState;

    const-string v1, "CREATED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/intermedia/model/PayoutState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/intermedia/model/PayoutState;->CREATED:Lcom/intermedia/model/PayoutState;

    .line 16
    new-instance v0, Lcom/intermedia/model/PayoutState;

    const-string v1, "CONFIRMED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/intermedia/model/PayoutState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/intermedia/model/PayoutState;->CONFIRMED:Lcom/intermedia/model/PayoutState;

    .line 17
    new-instance v0, Lcom/intermedia/model/PayoutState;

    const-string v1, "EMAIL_SUBMITTED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/intermedia/model/PayoutState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/intermedia/model/PayoutState;->EMAIL_SUBMITTED:Lcom/intermedia/model/PayoutState;

    .line 18
    new-instance v0, Lcom/intermedia/model/PayoutState;

    const-string v1, "PENDING"

    const/4 v5, 0x3

    const/16 v6, 0x2710

    invoke-direct {v0, v1, v5, v6}, Lcom/intermedia/model/PayoutState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/intermedia/model/PayoutState;->PENDING:Lcom/intermedia/model/PayoutState;

    .line 19
    new-instance v0, Lcom/intermedia/model/PayoutState;

    const-string v1, "COMPLETED"

    const/4 v6, 0x4

    const/16 v7, 0x2711

    invoke-direct {v0, v1, v6, v7}, Lcom/intermedia/model/PayoutState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/intermedia/model/PayoutState;->COMPLETED:Lcom/intermedia/model/PayoutState;

    .line 20
    new-instance v0, Lcom/intermedia/model/PayoutState;

    const-string v1, "CANCELED"

    const/4 v7, 0x5

    const/16 v8, 0x2712

    invoke-direct {v0, v1, v7, v8}, Lcom/intermedia/model/PayoutState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/intermedia/model/PayoutState;->CANCELED:Lcom/intermedia/model/PayoutState;

    .line 21
    new-instance v0, Lcom/intermedia/model/PayoutState;

    const-string v1, "FAILED"

    const/4 v8, 0x6

    const/16 v9, 0x2713

    invoke-direct {v0, v1, v8, v9}, Lcom/intermedia/model/PayoutState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/intermedia/model/PayoutState;->FAILED:Lcom/intermedia/model/PayoutState;

    .line 22
    new-instance v0, Lcom/intermedia/model/PayoutState;

    const-string v1, "UNKNOWN"

    const/4 v9, 0x7

    const/4 v10, -0x1

    invoke-direct {v0, v1, v9, v10}, Lcom/intermedia/model/PayoutState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/intermedia/model/PayoutState;->UNKNOWN:Lcom/intermedia/model/PayoutState;

    const/16 v0, 0x8

    .line 14
    new-array v0, v0, [Lcom/intermedia/model/PayoutState;

    sget-object v1, Lcom/intermedia/model/PayoutState;->CREATED:Lcom/intermedia/model/PayoutState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/intermedia/model/PayoutState;->CONFIRMED:Lcom/intermedia/model/PayoutState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/intermedia/model/PayoutState;->EMAIL_SUBMITTED:Lcom/intermedia/model/PayoutState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/intermedia/model/PayoutState;->PENDING:Lcom/intermedia/model/PayoutState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/intermedia/model/PayoutState;->COMPLETED:Lcom/intermedia/model/PayoutState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/intermedia/model/PayoutState;->CANCELED:Lcom/intermedia/model/PayoutState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/intermedia/model/PayoutState;->FAILED:Lcom/intermedia/model/PayoutState;

    aput-object v1, v0, v8

    sget-object v1, Lcom/intermedia/model/PayoutState;->UNKNOWN:Lcom/intermedia/model/PayoutState;

    aput-object v1, v0, v9

    sput-object v0, Lcom/intermedia/model/PayoutState;->$VALUES:[Lcom/intermedia/model/PayoutState;

    .line 24
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/intermedia/model/PayoutState;->map:Landroid/util/SparseArray;

    .line 27
    invoke-static {}, Lcom/intermedia/model/PayoutState;->values()[Lcom/intermedia/model/PayoutState;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 28
    sget-object v4, Lcom/intermedia/model/PayoutState;->map:Landroid/util/SparseArray;

    iget v5, v3, Lcom/intermedia/model/PayoutState;->value:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lcom/intermedia/model/PayoutState;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/intermedia/model/PayoutState;
    .locals 1

    .line 39
    sget-object v0, Lcom/intermedia/model/PayoutState;->map:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/intermedia/model/PayoutState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/intermedia/model/PayoutState;
    .locals 1

    .line 14
    const-class v0, Lcom/intermedia/model/PayoutState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/intermedia/model/PayoutState;

    return-object p0
.end method

.method public static values()[Lcom/intermedia/model/PayoutState;
    .locals 1

    .line 14
    sget-object v0, Lcom/intermedia/model/PayoutState;->$VALUES:[Lcom/intermedia/model/PayoutState;

    invoke-virtual {v0}, [Lcom/intermedia/model/PayoutState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/intermedia/model/PayoutState;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/intermedia/model/PayoutState;->value:I

    return v0
.end method
