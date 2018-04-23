.class Lcom/intermedia/MainActivity$MainActivityException;
.super Ljava/lang/RuntimeException;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainActivityException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intermedia/MainActivity;


# direct methods
.method constructor <init>(Lcom/intermedia/MainActivity;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/intermedia/MainActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 422
    iput-object p1, p0, Lcom/intermedia/MainActivity$MainActivityException;->this$0:Lcom/intermedia/MainActivity;

    .line 423
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/intermedia/MainActivity;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/intermedia/MainActivity$MainActivityException;->this$0:Lcom/intermedia/MainActivity;

    .line 427
    invoke-direct {p0, p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
