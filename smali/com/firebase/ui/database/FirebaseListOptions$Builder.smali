.class public Lcom/firebase/ui/database/FirebaseListOptions$Builder;
.super Ljava/lang/Object;
.source "FirebaseListOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/ui/database/FirebaseListOptions;
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
.field private mLayout:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end field

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

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/firebase/ui/database/FirebaseListOptions;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/firebase/ui/database/FirebaseListOptions<",
            "TT;>;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/firebase/ui/database/FirebaseListOptions$Builder;->mSnapshots:Lcom/firebase/ui/database/ObservableSnapshotArray;

    const-string v1, "Snapshot array cannot be null. Call setQuery or setSnapshotArray."

    invoke-static {v0, v1}, Lcom/firebase/ui/common/Preconditions;->assertNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/firebase/ui/database/FirebaseListOptions$Builder;->mLayout:Ljava/lang/Integer;

    const-string v1, "Layout cannot be null. Call setLayout."

    invoke-static {v0, v1}, Lcom/firebase/ui/common/Preconditions;->assertNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    new-instance v0, Lcom/firebase/ui/database/FirebaseListOptions;

    iget-object v1, p0, Lcom/firebase/ui/database/FirebaseListOptions$Builder;->mSnapshots:Lcom/firebase/ui/database/ObservableSnapshotArray;

    iget-object v2, p0, Lcom/firebase/ui/database/FirebaseListOptions$Builder;->mLayout:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/firebase/ui/database/FirebaseListOptions$Builder;->mOwner:Landroid/arch/lifecycle/LifecycleOwner;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/firebase/ui/database/FirebaseListOptions;-><init>(Lcom/firebase/ui/database/ObservableSnapshotArray;ILandroid/arch/lifecycle/LifecycleOwner;Lcom/firebase/ui/database/FirebaseListOptions$1;)V

    return-object v0
.end method

.method public setIndexedQuery(Lcom/google/firebase/database/Query;Lcom/google/firebase/database/DatabaseReference;Lcom/firebase/ui/database/SnapshotParser;)Lcom/firebase/ui/database/FirebaseListOptions$Builder;
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
            "Lcom/firebase/ui/database/FirebaseListOptions$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/firebase/ui/database/FirebaseListOptions$Builder;->mSnapshots:Lcom/firebase/ui/database/ObservableSnapshotArray;

    const-string v1, "Snapshot array already set. Call only one of setSnapshotArray, setQuery, or setIndexedQuery."

    invoke-static {v0, v1}, Lcom/firebase/ui/common/Preconditions;->assertNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    new-instance v0, Lcom/firebase/ui/database/FirebaseIndexArray;

    invoke-direct {v0, p1, p2, p3}, Lcom/firebase/ui/database/FirebaseIndexArray;-><init>(Lcom/google/firebase/database/Query;Lcom/google/firebase/database/DatabaseReference;Lcom/firebase/ui/database/SnapshotParser;)V

    iput-object v0, p0, Lcom/firebase/ui/database/FirebaseListOptions$Builder;->mSnapshots:Lcom/firebase/ui/database/ObservableSnapshotArray;

    return-object p0
.end method

.method public setIndexedQuery(Lcom/google/firebase/database/Query;Lcom/google/firebase/database/DatabaseReference;Ljava/lang/Class;)Lcom/firebase/ui/database/FirebaseListOptions$Builder;
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
            "Lcom/firebase/ui/database/FirebaseListOptions$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 133
    new-instance v0, Lcom/firebase/ui/database/ClassSnapshotParser;

    invoke-direct {v0, p3}, Lcom/firebase/ui/database/ClassSnapshotParser;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/firebase/ui/database/FirebaseListOptions$Builder;->setIndexedQuery(Lcom/google/firebase/database/Query;Lcom/google/firebase/database/DatabaseReference;Lcom/firebase/ui/database/SnapshotParser;)Lcom/firebase/ui/database/FirebaseListOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setLayout(I)Lcom/firebase/ui/database/FirebaseListOptions$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/firebase/ui/database/FirebaseListOptions$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 141
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/firebase/ui/database/FirebaseListOptions$Builder;->mLayout:Ljava/lang/Integer;

    return-object p0
.end method

.method public setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)Lcom/firebase/ui/database/FirebaseListOptions$Builder;
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
            "Lcom/firebase/ui/database/FirebaseListOptions$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 151
    iput-object p1, p0, Lcom/firebase/ui/database/FirebaseListOptions$Builder;->mOwner:Landroid/arch/lifecycle/LifecycleOwner;

    return-object p0
.end method

.method public setQuery(Lcom/google/firebase/database/Query;Lcom/firebase/ui/database/SnapshotParser;)Lcom/firebase/ui/database/FirebaseListOptions$Builder;
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
            "Lcom/firebase/ui/database/FirebaseListOptions$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/firebase/ui/database/FirebaseListOptions$Builder;->mSnapshots:Lcom/firebase/ui/database/ObservableSnapshotArray;

    const-string v1, "Snapshot array already set. Call only one of setSnapshotArray, setQuery, or setIndexedQuery."

    invoke-static {v0, v1}, Lcom/firebase/ui/common/Preconditions;->assertNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    new-instance v0, Lcom/firebase/ui/database/FirebaseArray;

    invoke-direct {v0, p1, p2}, Lcom/firebase/ui/database/FirebaseArray;-><init>(Lcom/google/firebase/database/Query;Lcom/firebase/ui/database/SnapshotParser;)V

    iput-object v0, p0, Lcom/firebase/ui/database/FirebaseListOptions$Builder;->mSnapshots:Lcom/firebase/ui/database/ObservableSnapshotArray;

    return-object p0
.end method

.method public setQuery(Lcom/google/firebase/database/Query;Ljava/lang/Class;)Lcom/firebase/ui/database/FirebaseListOptions$Builder;
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
            "Lcom/firebase/ui/database/FirebaseListOptions$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 103
    new-instance v0, Lcom/firebase/ui/database/ClassSnapshotParser;

    invoke-direct {v0, p2}, Lcom/firebase/ui/database/ClassSnapshotParser;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, p1, v0}, Lcom/firebase/ui/database/FirebaseListOptions$Builder;->setQuery(Lcom/google/firebase/database/Query;Lcom/firebase/ui/database/SnapshotParser;)Lcom/firebase/ui/database/FirebaseListOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSnapshotArray(Lcom/firebase/ui/database/ObservableSnapshotArray;)Lcom/firebase/ui/database/FirebaseListOptions$Builder;
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
            "Lcom/firebase/ui/database/FirebaseListOptions$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/firebase/ui/database/FirebaseListOptions$Builder;->mSnapshots:Lcom/firebase/ui/database/ObservableSnapshotArray;

    const-string v1, "Snapshot array already set. Call only one of setSnapshotArray, setQuery, or setIndexedQuery."

    invoke-static {v0, v1}, Lcom/firebase/ui/common/Preconditions;->assertNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iput-object p1, p0, Lcom/firebase/ui/database/FirebaseListOptions$Builder;->mSnapshots:Lcom/firebase/ui/database/ObservableSnapshotArray;

    return-object p0
.end method
