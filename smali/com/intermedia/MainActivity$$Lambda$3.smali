.class final synthetic Lcom/intermedia/MainActivity$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final arg$1:Lcom/intermedia/MainActivity;


# direct methods
.method constructor <init>(Lcom/intermedia/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/MainActivity$$Lambda$3;->arg$1:Lcom/intermedia/MainActivity;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/MainActivity$$Lambda$3;->arg$1:Lcom/intermedia/MainActivity;

    check-cast p1, Lretrofit2/Response;

    invoke-virtual {v0, p1}, Lcom/intermedia/MainActivity;->lambda$onCreate$0$MainActivity(Lretrofit2/Response;)V

    return-void
.end method
