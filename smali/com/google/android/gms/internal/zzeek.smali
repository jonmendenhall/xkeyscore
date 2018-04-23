.class final Lcom/google/android/gms/internal/zzeek;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzmtl:Lcom/google/firebase/database/DatabaseReference$CompletionListener;

.field private synthetic zzmud:Lcom/google/firebase/database/DatabaseError;

.field private synthetic zzmue:Lcom/google/firebase/database/DatabaseReference;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzedn;Lcom/google/firebase/database/DatabaseReference$CompletionListener;Lcom/google/firebase/database/DatabaseError;Lcom/google/firebase/database/DatabaseReference;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeek;->zzmtl:Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzeek;->zzmud:Lcom/google/firebase/database/DatabaseError;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzeek;->zzmue:Lcom/google/firebase/database/DatabaseReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeek;->zzmtl:Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeek;->zzmud:Lcom/google/firebase/database/DatabaseError;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeek;->zzmue:Lcom/google/firebase/database/DatabaseReference;

    invoke-interface {v0, v1, v2}, Lcom/google/firebase/database/DatabaseReference$CompletionListener;->onComplete(Lcom/google/firebase/database/DatabaseError;Lcom/google/firebase/database/DatabaseReference;)V

    return-void
.end method
