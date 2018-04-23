.class public Lcom/firebase/ui/database/FirebaseRecyclerOptions;
.super Ljava/lang/Object;
.source "FirebaseRecyclerOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/ui/database/FirebaseRecyclerOptions$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final ERR_SNAPSHOTS_NULL:Ljava/lang/String; = "Snapshot array cannot be null. Call one of setSnapshotArray, setQuery, or setIndexedQuery."

.field private static final ERR_SNAPSHOTS_SET:Ljava/lang/String; = "Snapshot array already set. Call only one of setSnapshotArray, setQuery, or setIndexedQuery."


# instance fields
.field private final mOwner:Landroid/arch/lifecycle/LifecycleOwner;

.field private final mSnapshots:Lcom/firebase/ui/database/ObservableSnapshotArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/firebase/ui/database/ObservableSnapshotArray<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/firebase/ui/database/ObservableSnapshotArray;Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 0
    .param p2    # Landroid/arch/lifecycle/LifecycleOwner;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/ui/database/ObservableSnapshotArray<",
            "TT;>;",
            "Landroid/arch/lifecycle/LifecycleOwner;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/firebase/ui/database/FirebaseRecyclerOptions;->mSnapshots:Lcom/firebase/ui/database/ObservableSnapshotArray;

    .line 31
    iput-object p2, p0, Lcom/firebase/ui/database/FirebaseRecyclerOptions;->mOwner:Landroid/arch/lifecycle/LifecycleOwner;

    return-void
.end method

.method synthetic constructor <init>(Lcom/firebase/ui/database/ObservableSnapshotArray;Landroid/arch/lifecycle/LifecycleOwner;Lcom/firebase/ui/database/FirebaseRecyclerOptions$1;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/firebase/ui/database/FirebaseRecyclerOptions;-><init>(Lcom/firebase/ui/database/ObservableSnapshotArray;Landroid/arch/lifecycle/LifecycleOwner;)V

    return-void
.end method


# virtual methods
.method public getOwner()Landroid/arch/lifecycle/LifecycleOwner;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/firebase/ui/database/FirebaseRecyclerOptions;->mOwner:Landroid/arch/lifecycle/LifecycleOwner;

    return-object v0
.end method

.method public getSnapshots()Lcom/firebase/ui/database/ObservableSnapshotArray;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/firebase/ui/database/ObservableSnapshotArray<",
            "TT;>;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/firebase/ui/database/FirebaseRecyclerOptions;->mSnapshots:Lcom/firebase/ui/database/ObservableSnapshotArray;

    return-object v0
.end method
