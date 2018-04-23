.class final synthetic Lcom/intermedia/function/PredicateUtils$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Predicate;


# instance fields
.field private final arg$1:Lio/reactivex/functions/Predicate;


# direct methods
.method constructor <init>(Lio/reactivex/functions/Predicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/function/PredicateUtils$$Lambda$0;->arg$1:Lio/reactivex/functions/Predicate;

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/intermedia/function/PredicateUtils$$Lambda$0;->arg$1:Lio/reactivex/functions/Predicate;

    invoke-static {v0, p1}, Lcom/intermedia/function/PredicateUtils;->lambda$not$0$PredicateUtils(Lio/reactivex/functions/Predicate;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
