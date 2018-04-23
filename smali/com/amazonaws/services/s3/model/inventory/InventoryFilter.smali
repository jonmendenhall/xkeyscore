.class public Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;
.super Ljava/lang/Object;
.source "InventoryFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private predicate:Lcom/amazonaws/services/s3/model/inventory/InventoryFilterPredicate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/s3/model/inventory/InventoryFilterPredicate;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;->predicate:Lcom/amazonaws/services/s3/model/inventory/InventoryFilterPredicate;

    return-void
.end method


# virtual methods
.method public getPredicate()Lcom/amazonaws/services/s3/model/inventory/InventoryFilterPredicate;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;->predicate:Lcom/amazonaws/services/s3/model/inventory/InventoryFilterPredicate;

    return-object v0
.end method

.method public setPredicate(Lcom/amazonaws/services/s3/model/inventory/InventoryFilterPredicate;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;->predicate:Lcom/amazonaws/services/s3/model/inventory/InventoryFilterPredicate;

    return-void
.end method

.method public withPredicate(Lcom/amazonaws/services/s3/model/inventory/InventoryFilterPredicate;)Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;->setPredicate(Lcom/amazonaws/services/s3/model/inventory/InventoryFilterPredicate;)V

    return-object p0
.end method
