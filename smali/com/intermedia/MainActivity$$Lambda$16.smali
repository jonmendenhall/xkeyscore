.class final synthetic Lcom/intermedia/MainActivity$$Lambda$16;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/intermedia/MainActivity;


# direct methods
.method constructor <init>(Lcom/intermedia/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/MainActivity$$Lambda$16;->arg$1:Lcom/intermedia/MainActivity;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/MainActivity$$Lambda$16;->arg$1:Lcom/intermedia/MainActivity;

    invoke-virtual {v0}, Lcom/intermedia/MainActivity;->lambda$null$8$MainActivity()V

    return-void
.end method
