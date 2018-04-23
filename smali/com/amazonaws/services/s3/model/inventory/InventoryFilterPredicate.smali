.class public abstract Lcom/amazonaws/services/s3/model/inventory/InventoryFilterPredicate;
.super Ljava/lang/Object;
.source "InventoryFilterPredicate.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract accept(Lcom/amazonaws/services/s3/model/inventory/InventoryPredicateVisitor;)V
.end method
