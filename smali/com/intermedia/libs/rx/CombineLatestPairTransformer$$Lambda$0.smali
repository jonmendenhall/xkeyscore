.class final synthetic Lcom/intermedia/libs/rx/CombineLatestPairTransformer$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# static fields
.field static final $instance:Lio/reactivex/functions/BiFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/intermedia/libs/rx/CombineLatestPairTransformer$$Lambda$0;

    invoke-direct {v0}, Lcom/intermedia/libs/rx/CombineLatestPairTransformer$$Lambda$0;-><init>()V

    sput-object v0, Lcom/intermedia/libs/rx/CombineLatestPairTransformer$$Lambda$0;->$instance:Lio/reactivex/functions/BiFunction;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
