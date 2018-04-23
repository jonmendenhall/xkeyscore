.class public Lcom/firebase/ui/database/FirebaseRecyclerOptions$Builder;
.super Ljava/lang/Object;
.source "FirebaseRecyclerOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/ui/database/FirebaseRecyclerOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mOwner:Landroid/arch/lifecycle/LifecycleOwner;

.field private mSnapshots:Lcom/firebase/ui/database/ObservableSnapshotArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/firebase/ui/database/ObservableSnapshotArray<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/firebase/ui/database/FirebaseRecyclerOptions;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/firebase/ui/database/FirebaseRecyclerOptions<",
            "TT;>;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/firebase/ui/database/FirebaseRecyclerOptions$Builder;->mSnapshots:Lcom/firebase/ui/database/ObservableSnapshotArray;

    const-string v1, "Snapshot array cannot be null. Call one of setSnapshotArray, setQuery, or setIndexedQuery."

    invoke-static {v0, v1}, Lcom/firebase/ui/common/Preconditions;->assertNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    new-instance v0, Lcom/firebase/ui/database/FirebaseRecyclerOptions;

    iget-object v1, p0, Lcom/firebase/ui/database/FirebaseRecyclerOptions$Builder;->mSnapshots:Lcom/firebase/ui/database/ObservableSnapshotArray;

    iget-object v2, p0, Lcom/firebase/ui/database/FirebaseRecyclerOptions$Builder;->mOwner:Landroid/arch/lifecycle/LifecycleOwner;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/firebase/ui/database/FirebaseRecyclerOptions;-><init>(Lcom/firebase/ui/database/ObservableSnapshotArray;Landroid/arch/lifecycle/LifecycleOwner;Lcom/firebase/ui/database/FirebaseRecyclerOptions$1;)V

    return-object v0
.end method

.method public setIndexedQuery(Lcom/google/firebase/database/Query;Lcom/google/firebase/database/DatabaseReference;Lcom/firebase/ui/database/SnapshotParser;)Lcom/firebase/ui/database/FirebaseRecyclerOptions$Builder;
    .locals 2
    .param p1    # Lcom/google/firebase/database/Query;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/database/DatabaseReference;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/firebase/ui/database/SnapshotParser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/Query;",
            "Lcom/google/firebase/database/DatabaseReference;",
            "Lcom/firebase/ui/database/SnapshotParser<",
            "TT;>;)",
            "Lcom/firebase/ui/database/FirebaseRecyclerOptions$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/firebase/ui/database/FirebaseRecyclerOptions$Builder;->mSnapshots:Lcom/firebase/ui/database/ObservableSnapshotArray;

    const-string v1, "Snapshot array already set. Call only one of setSnapshotArray, setQuery, or setIndexedQuery."

    invoke-static {v0, v1}, Lcom/firebase/ui/common/Preconditions;->assertNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    new-instance v0, Lcom/firebase/ui/database/FirebaseIndexArray;

    invoke-direct {v0, p1, p2, p3}, Lcom/firebase/ui/database/FirebaseIndexArray;-><init>(Lcom/google/firebase/database/Query;Lcom/google/firebase/database/DatabaseReference;Lcom/firebase/ui/database/SnapshotParser;)V

    iput-object v0, p0, Lcom/firebase/ui/database/FirebaseRecyclerOptions$Builder;->mSnapshots:Lcom/firebase/ui/database/ObservableSnapshotArray;

    return-object p0
.end method

.method public setIndexedQuery(Lcom/google/firebase/database/Query;Lcom/google/firebase/database/DatabaseReference;Ljava/lang/Class;)Lcom/firebase/ui/database/FirebaseRecyclerOptions$Builder;
    .locals 1
    .param p1    # Lcom/google/firebase/database/Query;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/database/DatabaseReference;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/Query;",
            "Lcom/google/firebase/database/DatabaseReference;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/firebase/ui/database/FirebaseRecyclerOptions$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 129
    new-instance v0, Lcom/firebase/ui/database/ClassSnapshotParser;

    invoke-direct {v0, p3}, Lcom/firebase/ui/database/ClassSnapshotParser;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/firebase/ui/database/FirebaseRecyclerOptions$Builder;->setIndexedQuery(Lcom/google/firebase/database/Query;Lcom/google/firebase/database/DatabaseReference;Lcom/firebase/ui/database/SnapshotParser;)Lcom/firebase/ui/database/FirebaseRecyclerOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)Lcom/firebase/ui/database/FirebaseRecyclerOptions$Builder;
    .locals 0
    .param p1    # Landroid/arch/lifecycle/LifecycleOwner;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/LifecycleOwner;",
            ")",
            "Lcom/firebase/ui/database/FirebaseRecyclerOptions$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 138
    iput-object p1, p0, Lcom/firebase/ui/database/FirebaseRecyclerOptions$Builder;->mOwner:Landroid/arch/lifecycle/LifecycleOwner;

    return-object p0
.end method

.method public setQuery(Lcom/google/firebase/database/Query;Lcom/firebase/ui/database/SnapshotParser;)Lcom/firebase/ui/database/FirebaseRecyclerOptions$Builder;
    .locals 2
    .param p1    # Lcom/google/firebase/database/Query;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/firebase/ui/database/SnapshotParser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/Query;",
            "Lcom/firebase/ui/database/SnapshotParser<",
            "TT;>;)",
            "Lcom/firebase/ui/database/FirebaseRecyclerOptions$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/firebase/ui/database/FirebaseRecyclerOptions$Builder;->mSnapshots:Lcom/firebase/ui/database/ObservableSnapshotArray;

    const-string v1, "Snapshot array already set. Call only one of setSnapshotArray, setQuery, or setIndexedQuery."

    invoke-static {v0, v1}, Lcom/firebase/ui/common/Preconditions;->assertNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    new-instance v0, Lcom/firebase/ui/database/FirebaseArray;

    invoke-direct {v0, p1, p2}, Lcom/firebase/ui/database/FirebaseArray;-><init>(Lcom/google/firebase/database/Query;Lcom/firebase/ui/database/SnapshotParser;)V

    iput-object v0, p0, Lcom/firebase/ui/database/FirebaseRecyclerOptions$Builder;->mSnapshots:Lcom/firebase/ui/database/ObservableSnapshotArray;

    return-object p0
.end method

.method public setQuery(Lcom/google/firebase/database/Query;Ljava/lang/Class;)Lcom/firebase/ui/database/FirebaseRecyclerOptions$Builder;
    .locals 1
    .param p1    # Lcom/google/firebase/database/Query;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/Query;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/firebase/ui/database/FirebaseRecyclerOptions$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 97
    new-instance v0, Lcom/firebase/ui/database/ClassSnapshotParser;

    invoke-direct {v0, p2}, Lcom/firebase/ui/database/ClassSnapshotParser;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, p1, v0}, Lcom/firebase/ui/database/FirebaseRecyclerOptions$Builder;->setQuery(Lcom/google/firebase/database/Query;Lcom/firebase/ui/database/SnapshotParser;)Lcom/firebase/ui/database/FirebaseRecyclerOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSnapshotArray(Lcom/firebase/ui/database/ObservableSnapshotArray;)Lcom/firebase/ui/database/FirebaseRecyclerOptions$Builder;
    .locals 2
    .param p1    # Lcom/firebase/ui/database/ObservableSnapshotArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/ui/database/ObservableSnapshotArray<",
            "TT;>;)",
            "Lcom/firebase/ui/database/FirebaseRecyclerOptions$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/firebase/ui/database/FirebaseRecyclerOptions$Builder;->mSnapshots:Lcom/firebase/ui/database/ObservableSnapshotArray;

    const-string v1, "Snapshot array already set. Call only one of setSnapshotArray, setQuery, or setIndexedQuery."

    invoke-static {v0, v1}, Lcom/firebase/ui/common/Preconditions;->assertNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iput-object p1, p0, Lcom/firebase/ui/database/FirebaseRecyclerOptions$Builder;->mSnapshots:Lcom/firebase/ui/database/ObservableSnapshotArray;

    return-object p0
.end method
