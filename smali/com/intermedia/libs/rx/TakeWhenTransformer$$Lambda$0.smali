.class final synthetic Lcom/intermedia/libs/rx/TakeWhenTransformer$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# static fields
.field static final $instance:Lio/reactivex/functions/BiFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/intermedia/libs/rx/TakeWhenTransformer$$Lambda$0;

    invoke-direct {v0}, Lcom/intermedia/libs/rx/TakeWhenTransformer$$Lambda$0;-><init>()V

    sput-object v0, Lcom/intermedia/libs/rx/TakeWhenTransformer$$Lambda$0;->$instance:Lio/reactivex/functions/BiFunction;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p2}, Lcom/intermedia/libs/rx/TakeWhenTransformer;->lambda$apply$0$TakeWhenTransformer(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
