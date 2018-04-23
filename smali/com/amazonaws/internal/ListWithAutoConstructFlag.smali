.class public Lcom/amazonaws/internal/ListWithAutoConstructFlag;
.super Ljava/util/ArrayList;
.source "ListWithAutoConstructFlag.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private autoConstruct:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public isAutoConstruct()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/amazonaws/internal/ListWithAutoConstructFlag;->autoConstruct:Z

    return v0
.end method

.method public setAutoConstruct(Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/amazonaws/internal/ListWithAutoConstructFlag;->autoConstruct:Z

    return-void
.end method
