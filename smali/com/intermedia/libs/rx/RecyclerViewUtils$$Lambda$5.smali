.class final synthetic Lcom/intermedia/libs/rx/RecyclerViewUtils$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Predicate;


# static fields
.field static final $instance:Lio/reactivex/functions/Predicate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/intermedia/libs/rx/RecyclerViewUtils$$Lambda$5;

    invoke-direct {v0}, Lcom/intermedia/libs/rx/RecyclerViewUtils$$Lambda$5;-><init>()V

    sput-object v0, Lcom/intermedia/libs/rx/RecyclerViewUtils$$Lambda$5;->$instance:Lio/reactivex/functions/Predicate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/util/Pair;

    invoke-static {p1}, Lcom/intermedia/libs/rx/RecyclerViewUtils;->lambda$scrolledNearBottom$0$RecyclerViewUtils(Landroid/util/Pair;)Z

    move-result p1

    return p1
.end method
