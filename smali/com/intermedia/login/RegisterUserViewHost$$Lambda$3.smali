.class final synthetic Lcom/intermedia/login/RegisterUserViewHost$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final arg$1:Lcom/intermedia/login/RegisterUserViewHost;


# direct methods
.method constructor <init>(Lcom/intermedia/login/RegisterUserViewHost;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/login/RegisterUserViewHost$$Lambda$3;->arg$1:Lcom/intermedia/login/RegisterUserViewHost;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/login/RegisterUserViewHost$$Lambda$3;->arg$1:Lcom/intermedia/login/RegisterUserViewHost;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lcom/intermedia/login/RegisterUserViewHost;->lambda$new$1$RegisterUserViewHost(Ljava/lang/CharSequence;)V

    return-void
.end method
